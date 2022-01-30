package §1" §
{
   import §7t§.§7a§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §!!2§ extends EventDispatcher
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
      
      private static var §+!u§:§!!2§ = new §!!2§();
       
      
      private var §%o§:Dictionary;
      
      public function §!!2§()
      {
         this.§%o§ = new Dictionary();
         super();
      }
      
      public static function get §[E§() : §!!2§
      {
         return §+!u§;
      }
      
      public function §[j§(param1:Function, param2:String) : void
      {
         if(this.§%o§[param2] == null)
         {
            this.§%o§[param2] = new Vector.<Function>();
         }
         if(this.§%o§[param2].indexOf(param1) == -1)
         {
            this.§%o§[param2].push(param1);
         }
      }
      
      public function §'!j§(param1:Function, param2:String) : void
      {
         var _loc4_:int = 0;
         var _loc3_:Vector.<String> = this.§%o§[param2];
         if(_loc3_)
         {
            if((_loc4_ = this.§%o§[param2].indexOf(param1)) > -1)
            {
               this.§%o§[param2].splice(_loc4_,1);
            }
         }
      }
      
      public function §%r§() : void
      {
         this.§%o§ = new Dictionary();
      }
      
      private function §"!A§(param1:String, ... rest) : Boolean
      {
         var _loc3_:Function = null;
         for each(_loc3_ in this.§%o§[param1])
         {
            if(!_loc3_.apply(null,rest))
            {
               return false;
            }
         }
         return true;
      }
      
      public function §-"6§() : Boolean
      {
         return true;
      }
      
      public function §?!p§() : Boolean
      {
         return this.§"!A§(SAVE);
      }
      
      public function §+6§() : Boolean
      {
         return this.§"!A§(CONTINUE);
      }
      
      public function §'%§(param1:§7a§ = null) : Boolean
      {
         return this.§"!A§(MODIFY,param1);
      }
      
      public function §]"7§(param1:String = null) : Boolean
      {
         return this.§"!A§(ADD,param1);
      }
      
      public function §#§(param1:§7a§ = null) : Boolean
      {
         return this.§"!A§(DELETE,param1);
      }
      
      public function §&f§(param1:String) : Boolean
      {
         return this.§"!A§(CATEGORY,param1);
      }
      
      public function §["&§() : Boolean
      {
         return this.§"!A§(GRAVITY);
      }
      
      public function §^"#§() : Boolean
      {
         return this.§"!A§(CREATE_UNDO);
      }
   }
}
