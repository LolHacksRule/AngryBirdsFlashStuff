package §6!a§
{
   public class §?!!§
   {
       
      
      private var §5H§:Number;
      
      private var §<0§:String;
      
      private var §`D§:Function;
      
      private var §,!b§:Function;
      
      private var §7!9§:Boolean = true;
      
      public function §?!!§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            do
            {
               this.§<0§ = param1;
               do
               {
                  this.§5H§ = param2;
               }
               while(_loc4_ && this);
               
            }
            while(_loc4_ && _loc3_);
            
         }
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §^!B§() : String
      {
         return this.§<0§;
      }
      
      public function §0!'§() : Function
      {
         return this.§`D§;
      }
      
      public function §2!8§() : Function
      {
         return this.§,!b§;
      }
      
      public function § !6§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(this.§7!9§)
            {
               if(!(_loc2_ && this))
               {
                  this.§`D§.call(null,param1);
               }
            }
         }
      }
      
      public function §3!_§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§7!9§)
            {
               if(_loc3_ || this)
               {
                  addr39:
                  this.§,!b§.call(null,param1);
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function §]!5§(param1:Function, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§`D§ = param1;
         }
         do
         {
            this.§,!b§ = param2;
         }
         while(_loc3_ && _loc3_);
         
      }
      
      public function §;k§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§7!9§ = false;
         }
      }
      
      public function §1?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§7!9§ = true;
         }
      }
   }
}
