package §6!F§
{
   public class §2!?§
   {
       
      
      private var §7d§:Number;
      
      private var §[!H§:String;
      
      private var §?!N§:Function;
      
      private var §=!&§:Function;
      
      private var §&@§:Boolean = true;
      
      public function §2!?§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super();
            if(!(_loc3_ && param2))
            {
               this.§[!H§ = param1;
               if(_loc4_)
               {
                  addr48:
                  this.§7d§ = param2;
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §0S§() : String
      {
         return this.§[!H§;
      }
      
      public function §%9§() : Function
      {
         return this.§?!N§;
      }
      
      public function §]!2§() : Function
      {
         return this.§=!&§;
      }
      
      public function § !L§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§&@§)
            {
               if(!(_loc2_ && this))
               {
                  this.§?!N§.call(null,param1);
               }
            }
         }
      }
      
      public function §]Y§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§&@§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr28:
                  this.§=!&§.call(null,param1);
               }
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function §,4§(param1:Function, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§?!N§ = param1;
            if(!_loc3_)
            {
               addr24:
               this.§=!&§ = param2;
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function §7!C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§&@§ = false;
         }
      }
      
      public function §@5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§&@§ = true;
         }
      }
   }
}
