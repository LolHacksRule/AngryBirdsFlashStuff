package §,!x§
{
   import §1!N§.§"!k§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §0!s§ extends EventDispatcher
   {
      
      public static const PAN:String = "PAN";
      
      public static const SAVE:String = "SAVE";
      
      public static const CONTINUE:String = "CONTINUE";
      
      public static const MODIFY:String = "MODIFY";
      
      public static const ADD:String = "ADD";
      
      public static const DELETE:String = "DELETE";
      
      public static const CATEGORY:String = "CATEGORY";
      
      public static const GRAVITY:String = "GRAVITY";
      
      public static const CREATE_UNDO:String = "CREATE_UNDO";
      
      private static var §%!Y§:§0!s§ = new §0!s§();
       
      
      private var § !4§:Dictionary;
      
      public function §0!s§()
      {
         this.§ !4§ = new Dictionary();
         super();
      }
      
      public static function get § "!§() : §0!s§
      {
         return §%!Y§;
      }
      
      public function §3"'§(param1:Function, param2:String) : void
      {
         if(this.§ !4§[param2] == null)
         {
            this.§ !4§[param2] = new Vector.<Function>();
         }
         if(this.§ !4§[param2].indexOf(param1) == -1)
         {
            this.§ !4§[param2].push(param1);
         }
      }
      
      public function §7>§(param1:Function, param2:String) : void
      {
         var _loc4_:int = 0;
         var _loc3_:Vector.<String> = this.§ !4§[param2];
         if(_loc3_)
         {
            if((_loc4_ = this.§ !4§[param2].indexOf(param1)) > -1)
            {
               this.§ !4§[param2].splice(_loc4_,1);
            }
         }
      }
      
      public function §6f§() : void
      {
         this.§ !4§ = new Dictionary();
      }
      
      private function §2;§(param1:String, ... rest) : Boolean
      {
         var _loc3_:Function = null;
         for each(_loc3_ in this.§ !4§[param1])
         {
            if(!_loc3_.apply(null,rest))
            {
               return false;
            }
         }
         return true;
      }
      
      public function § p§() : Boolean
      {
         return true;
      }
      
      public function §-U§() : Boolean
      {
         return this.§2;§(SAVE);
      }
      
      public function §>!<§() : Boolean
      {
         return this.§2;§(CONTINUE);
      }
      
      public function §in§(param1:§"!k§ = null) : Boolean
      {
         return this.§2;§(MODIFY,param1);
      }
      
      public function §7!F§(param1:String = null) : Boolean
      {
         return this.§2;§(ADD,param1);
      }
      
      public function §]!I§(param1:§"!k§ = null) : Boolean
      {
         return this.§2;§(DELETE,param1);
      }
      
      public function §^?§(param1:String) : Boolean
      {
         return this.§2;§(CATEGORY,param1);
      }
      
      public function §>!z§() : Boolean
      {
         return this.§2;§(GRAVITY);
      }
      
      public function §;!=§() : Boolean
      {
         return this.§2;§(CREATE_UNDO);
      }
   }
}
