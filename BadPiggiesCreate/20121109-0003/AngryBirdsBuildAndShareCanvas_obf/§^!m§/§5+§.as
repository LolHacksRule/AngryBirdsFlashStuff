package §^!m§
{
   public class §5+§
   {
       
      
      private var §@D§:Number;
      
      private var §7!+§:String;
      
      private var §+s§:Function;
      
      private var §6!c§:Function;
      
      private var §<"1§:Boolean = true;
      
      public function §5+§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super();
            while(true)
            {
               this.§7!+§ = param1;
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            this.§@D§ = param2;
            if(_loc4_ || this)
            {
               if(_loc4_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §8"&§() : String
      {
         return this.§7!+§;
      }
      
      public function §0!F§() : Function
      {
         return this.§+s§;
      }
      
      public function §1!P§() : Function
      {
         return this.§6!c§;
      }
      
      public function §each §(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(this.§<"1§)
            {
               if(!(_loc2_ && param1))
               {
                  this.§+s§.call(null,param1);
               }
            }
         }
      }
      
      public function §'y§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§<"1§)
            {
               if(_loc2_)
               {
                  addr43:
                  this.§6!c§.call(null,param1);
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function §[6§(param1:Function, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§+s§ = param1;
         }
         do
         {
            this.§6!c§ = param2;
         }
         while(!(_loc4_ || this));
         
      }
      
      public function §5!K§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§<"1§ = false;
         }
      }
      
      public function §[F§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§<"1§ = true;
         }
      }
   }
}
