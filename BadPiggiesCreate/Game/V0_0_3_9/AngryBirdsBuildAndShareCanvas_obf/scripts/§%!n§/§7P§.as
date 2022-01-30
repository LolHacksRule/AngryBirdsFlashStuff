package §%!n§
{
   import §%%§.§7!O§;
   import flash.events.EventDispatcher;
   
   public class §7P§ extends EventDispatcher
   {
      
      private static var §,!X§:§7P§ = new §7P§();
       
      
      private var §1?§:Vector.<Object>;
      
      public function §7P§()
      {
         this.§1?§ = new Vector.<Object>();
         super();
      }
      
      public static function get §'!o§() : §7P§
      {
         return §,!X§;
      }
      
      public function §7b§(param1:*) : void
      {
         if(this.§1?§.indexOf(param1) == -1)
         {
            this.§1?§.push(param1);
         }
      }
      
      public function §8!F§() : void
      {
         this.§1?§ = new Vector.<Object>();
      }
      
      private function §2h§(param1:String, ... rest) : Boolean
      {
         var _loc3_:Object = null;
         for each(_loc3_ in this.§1?§)
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
      
      public function §?`§() : Boolean
      {
         return true;
      }
      
      public function canSave() : Boolean
      {
         return this.§2h§("canSave");
      }
      
      public function canContinue() : Boolean
      {
         return this.§2h§("canContinue");
      }
      
      public function §&$§(param1:§7!O§ = null) : Boolean
      {
         return this.§2h§("canObjectBeModified",param1);
      }
      
      public function §2!k§(param1:String = null) : Boolean
      {
         return this.§2h§("canObjectBeAdded",param1);
      }
      
      public function §@"7§(param1:§7!O§ = null) : Boolean
      {
         return this.§2h§("canObjectBeDeleted",param1);
      }
      
      public function isCategoryAvailable(param1:String) : Boolean
      {
         return this.§2h§("isCategoryAvailable",param1);
      }
      
      public function isGravityAvailable() : Boolean
      {
         return this.§2h§("isGravityAvailable");
      }
      
      public function canCreateUndoPoint() : Boolean
      {
         return this.§2h§("canCreateUndoPoint");
      }
   }
}
