package
{
   import flash.display.Sprite;
   import org.flexunit.listeners.CIListener;
   import org.flexunit.runner.FlexUnitCore;
   import tests.TestSuite;
   
   public class FlexUnitApplication extends Sprite
   {
       
      
      public var core:FlexUnitCore;
      
      public function FlexUnitApplication()
      {
         super();
         this.onCreationComplete();
      }
      
      private function onCreationComplete() : void
      {
         this.core = new FlexUnitCore();
         this.core.addListener(new CIListener());
         this.core.run(this.currentRunTestSuite());
      }
      
      public function currentRunTestSuite() : Array
      {
         var testsToRun:Array = new Array();
         testsToRun.push(TestSuite);
         return testsToRun;
      }
   }
}
