package §!q§
{
   import §?^§.§0Q§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class § %§ extends EventDispatcher
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
      
      private static var §,5§:§ %§ = new § %§();
       
      
      private var §3-§:Dictionary;
      
      public function § %§()
      {
         this.§3-§ = new Dictionary();
         super();
      }
      
      public static function get §,l§() : § %§
      {
         return §,5§;
      }
      
      public function §]!0§(param1:Function, param2:String) : void
      {
         if(this.§3-§[param2] == null)
         {
            this.§3-§[param2] = new Vector.<Function>();
         }
         if(this.§3-§[param2].indexOf(param1) == -1)
         {
            this.§3-§[param2].push(param1);
         }
      }
      
      public function §;;§(param1:Function, param2:String) : void
      {
         var _loc4_:int = 0;
         var _loc3_:Vector.<String> = this.§3-§[param2];
         if(_loc3_)
         {
            if((_loc4_ = this.§3-§[param2].indexOf(param1)) > -1)
            {
               this.§3-§[param2].splice(_loc4_,1);
            }
         }
      }
      
      public function §@!@§() : void
      {
         this.§3-§ = new Dictionary();
      }
      
      private function §!!G§(param1:String, ... rest) : Boolean
      {
         var _loc3_:Function = null;
         for each(_loc3_ in this.§3-§[param1])
         {
            if(!_loc3_.apply(null,rest))
            {
               return false;
            }
         }
         return true;
      }
      
      public function §@i§() : Boolean
      {
         return true;
      }
      
      public function §#G§() : Boolean
      {
         return this.§!!G§(SAVE);
      }
      
      public function §^l§() : Boolean
      {
         return this.§!!G§(CONTINUE);
      }
      
      public function §?!7§(param1:§0Q§ = null) : Boolean
      {
         return this.§!!G§(MODIFY,param1);
      }
      
      public function §=d§(param1:String = null) : Boolean
      {
         return this.§!!G§(ADD,param1);
      }
      
      public function §&!!§(param1:§0Q§ = null) : Boolean
      {
         return this.§!!G§(DELETE,param1);
      }
      
      public function §-S§(param1:String) : Boolean
      {
         return this.§!!G§(CATEGORY,param1);
      }
      
      public function §1!s§() : Boolean
      {
         return this.§!!G§(GRAVITY);
      }
      
      public function §8!9§() : Boolean
      {
         return this.§!!G§(CREATE_UNDO);
      }
   }
}
