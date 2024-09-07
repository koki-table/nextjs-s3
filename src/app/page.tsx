import { Button } from "@/components/ui/button";
import { useRouter } from 'next/navigation'

export default function Home() {
  const router = useRouter()

  const handleNavigate = () => {
    router.push('/sample');
  };
  return (
    <main className="flex min-h-screen flex-col items-center justify-between p-24">
      <div>
        <Button onClick={handleNavigate}>Click me</Button>
      </div>
    </main>
  );
}
