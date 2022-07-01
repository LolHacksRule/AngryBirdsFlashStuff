package § ^§
{
   import §=%§.§<A§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §@#§ extends EventDispatcher
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
      
      private static var §`!z§:§@#§ = new §@#§();
       
      
      private var §6G§:Dictionary;
      
      public function §@#§()
      {
         this.§6G§ = new Dictionary();
         super();
      }
      
      public static function get §7!?§() : §@#§
      {
         return §`!z§;
      }
      
      public function §<?§(param1:Function, param2:String) : void
      {
         if(this.§6G§[param2] == null)
         {
            this.§6G§[param2] = new Vector.<Function>();
         }
         if(this.§6G§[param2].indexOf(param1) == -1)
         {
            this.§6G§[param2].push(param1);
         }
      }
      
      public function §0!z§(param1:Function, param2:String) : void
      {
         var _loc4_:int = 0;
         var _loc3_:Vector.<String> = this.§6G§[param2];
         if(_loc3_)
         {
            if((_loc4_ = this.§6G§[param2].indexOf(param1)) > -1)
            {
               this.§6G§[param2].splice(_loc4_,1);
            }
         }
      }
      
      public function §'!y§() : void
      {
         this.§6G§ = new Dictionary();
      }
      
      private function §16§(param1:String, ... rest) : Boolean
      {
         var _loc3_:Function = null;
         for each(_loc3_ in this.§6G§[param1])
         {
            if(!_loc3_.apply(null,rest))
            {
               return false;
            }
         }
         return true;
      }
      
      public function §=9§() : Boolean
      {
         return true;
      }
      
      public function §<"$§() : Boolean
      {
         return this.§16§(SAVE);
      }
      
      public function §#!^§() : Boolean
      {
         return this.§16§(CONTINUE);
      }
      
      public function §9d§(param1:§<A§ = null) : Boolean
      {
         return this.§16§(MODIFY,param1);
      }
      
      public function §]Z§(param1:String = null) : Boolean
      {
         return this.§16§(ADD,param1);
      }
      
      public function §%v§(param1:§<A§ = null) : Boolean
      {
         return this.§16§(DELETE,param1);
      }
      
      public function §-!9§(param1:String) : Boolean
      {
         return this.§16§(CATEGORY,param1);
      }
      
      public function §6,§() : Boolean
      {
         return this.§16§(GRAVITY);
      }
      
      public function §[!k§() : Boolean
      {
         return this.§16§(CREATE_UNDO);
      }
   }
}
