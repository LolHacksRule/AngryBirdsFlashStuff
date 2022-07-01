package §2!5§
{
   import §@!P§.§?"%§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §=,§ extends EventDispatcher
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
      
      private static var §;A§:§=,§ = new §=,§();
       
      
      private var §9!!§:Dictionary;
      
      public function §=,§()
      {
         this.§9!!§ = new Dictionary();
         super();
      }
      
      public static function get §if §() : §=,§
      {
         return §;A§;
      }
      
      public function §,!M§(param1:Function, param2:String) : void
      {
         if(this.§9!!§[param2] == null)
         {
            this.§9!!§[param2] = new Vector.<Function>();
         }
         if(this.§9!!§[param2].indexOf(param1) == -1)
         {
            this.§9!!§[param2].push(param1);
         }
      }
      
      public function §5!@§(param1:Function, param2:String) : void
      {
         var _loc4_:int = 0;
         var _loc3_:Vector.<String> = this.§9!!§[param2];
         if(_loc3_)
         {
            if((_loc4_ = this.§9!!§[param2].indexOf(param1)) > -1)
            {
               this.§9!!§[param2].splice(_loc4_,1);
            }
         }
      }
      
      public function §8!t§() : void
      {
         this.§9!!§ = new Dictionary();
      }
      
      private function §8"0§(param1:String, ... rest) : Boolean
      {
         var _loc3_:Function = null;
         for each(_loc3_ in this.§9!!§[param1])
         {
            if(!_loc3_.apply(null,rest))
            {
               return false;
            }
         }
         return true;
      }
      
      public function §=o§() : Boolean
      {
         return true;
      }
      
      public function §9q§() : Boolean
      {
         return this.§8"0§(SAVE);
      }
      
      public function §^a§() : Boolean
      {
         return this.§8"0§(CONTINUE);
      }
      
      public function §9'§(param1:§?"%§ = null) : Boolean
      {
         return this.§8"0§(MODIFY,param1);
      }
      
      public function §?!W§(param1:String = null) : Boolean
      {
         return this.§8"0§(ADD,param1);
      }
      
      public function §[h§(param1:§?"%§ = null) : Boolean
      {
         return this.§8"0§(DELETE,param1);
      }
      
      public function §9§(param1:String) : Boolean
      {
         return this.§8"0§(CATEGORY,param1);
      }
      
      public function §"!-§() : Boolean
      {
         return this.§8"0§(GRAVITY);
      }
      
      public function §>!6§() : Boolean
      {
         return this.§8"0§(CREATE_UNDO);
      }
   }
}
