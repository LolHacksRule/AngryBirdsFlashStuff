package §9y§
{
   import flash.display.SimpleButton;
   import flash.events.EventDispatcher;
   
   public class §><§ extends EventDispatcher
   {
       
      
      private var §"5§:int;
      
      private var §'!D§:String;
      
      private var §9!P§:SimpleButton;
      
      public function §><§(param1:SimpleButton)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            do
            {
               this.§9!P§ = param1;
            }
            while(_loc3_ && this);
            
         }
      }
      
      public function get levelNum() : int
      {
         return this.§"5§;
      }
      
      public function set levelNum(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§"5§ = param1;
         }
      }
      
      public function get levelName() : String
      {
         return this.§'!D§;
      }
      
      public function set levelName(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§'!D§ = param1;
         }
      }
      
      public function get §@v§() : SimpleButton
      {
         return this.§9!P§;
      }
   }
}
