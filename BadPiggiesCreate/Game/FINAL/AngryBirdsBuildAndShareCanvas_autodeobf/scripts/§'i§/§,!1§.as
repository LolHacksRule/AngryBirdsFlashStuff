package §'i§
{
   import §7r§.§=q§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §,!1§ extends EventDispatcher
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
      
      private static var §1%§:§,!1§ = new §,!1§();
       
      
      private var §-4§:Dictionary;
      
      public function §,!1§()
      {
         this.§-4§ = new Dictionary();
         super();
      }
      
      public static function get §2=§() : §,!1§
      {
         return §1%§;
      }
      
      public function §8!5§(param1:Function, param2:String) : void
      {
         if(this.§-4§[param2] == null)
         {
            this.§-4§[param2] = new Vector.<Function>();
         }
         if(this.§-4§[param2].indexOf(param1) == -1)
         {
            this.§-4§[param2].push(param1);
         }
      }
      
      public function §>![§(param1:Function, param2:String) : void
      {
         var _loc4_:int = 0;
         var _loc3_:Vector.<String> = this.§-4§[param2];
         if(_loc3_)
         {
            if((_loc4_ = this.§-4§[param2].indexOf(param1)) > -1)
            {
               this.§-4§[param2].splice(_loc4_,1);
            }
         }
      }
      
      public function §]!2§() : void
      {
         this.§-4§ = new Dictionary();
      }
      
      private function §<!F§(param1:String, ... rest) : Boolean
      {
         var _loc3_:Function = null;
         for each(_loc3_ in this.§-4§[param1])
         {
            if(!_loc3_.apply(null,rest))
            {
               return false;
            }
         }
         return true;
      }
      
      public function §1!?§() : Boolean
      {
         return true;
      }
      
      public function §-!Q§() : Boolean
      {
         return this.§<!F§(SAVE);
      }
      
      public function § b§() : Boolean
      {
         return this.§<!F§(CONTINUE);
      }
      
      public function §>L§(param1:§=q§ = null) : Boolean
      {
         return this.§<!F§(MODIFY,param1);
      }
      
      public function §[!e§(param1:String = null) : Boolean
      {
         return this.§<!F§(ADD,param1);
      }
      
      public function §,h§(param1:§=q§ = null) : Boolean
      {
         return this.§<!F§(DELETE,param1);
      }
      
      public function §"H§(param1:String) : Boolean
      {
         return this.§<!F§(CATEGORY,param1);
      }
      
      public function §"";§() : Boolean
      {
         return this.§<!F§(GRAVITY);
      }
      
      public function §8§() : Boolean
      {
         return this.§<!F§(CREATE_UNDO);
      }
   }
}
