package §4!7§
{
   import flash.events.EventDispatcher;
   import §true§.§>"-§;
   
   public class §]!1§ extends EventDispatcher
   {
      
      private static var §'!t§:§]!1§ = new §]!1§();
       
      
      private var §6j§:Vector.<Object>;
      
      public function §]!1§()
      {
         this.§6j§ = new Vector.<Object>();
         super();
      }
      
      public static function get §9j§() : §]!1§
      {
         return §'!t§;
      }
      
      public function §+!n§(param1:*) : void
      {
         if(this.§6j§.indexOf(param1) == -1)
         {
            this.§6j§.push(param1);
         }
      }
      
      public function §>!;§() : void
      {
         this.§6j§ = new Vector.<Object>();
      }
      
      private function §]Y§(param1:String, ... rest) : Boolean
      {
         var _loc3_:Object = null;
         for each(_loc3_ in this.§6j§)
         {
            if(_loc3_.hasOwnProperty(param1))
            {
               if(!_loc3_[param1].apply(_loc3_,rest))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      public function canPan() : Boolean
      {
         return this.§]Y§("canPan");
      }
      
      public function canSave() : Boolean
      {
         return this.§]Y§("canSave");
      }
      
      public function canContinue() : Boolean
      {
         return this.§]Y§("canContinue");
      }
      
      public function §5]§(param1:§>"-§ = null) : Boolean
      {
         return this.§]Y§("canObjectBeModified",param1);
      }
      
      public function §]=§(param1:String = null) : Boolean
      {
         return this.§]Y§("canObjectBeAdded",param1);
      }
      
      public function §%k§(param1:§>"-§ = null) : Boolean
      {
         return this.§]Y§("canObjectBeDeleted",param1);
      }
      
      public function isCategoryAvailable(param1:String) : Boolean
      {
         return this.§]Y§("isCategoryAvailable",param1);
      }
      
      public function isGravityAvailable() : Boolean
      {
         return this.§]Y§("isGravityAvailable");
      }
      
      public function canCreateUndoPoint() : Boolean
      {
         return this.§]Y§("canCreateUndoPoint");
      }
   }
}
