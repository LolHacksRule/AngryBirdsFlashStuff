package §;!5§
{
   public class §9!H§
   {
       
      
      private var §2!q§:Number;
      
      private var §^!!§:String;
      
      private var §8!!§:Function;
      
      private var §<O§:Function;
      
      private var §6g§:Boolean = true;
      
      public function §9!H§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super();
            while(true)
            {
               this.§^!!§ = param1;
               while(_loc3_)
               {
                  this.§2!q§ = param2;
                  if(_loc3_ || param2)
                  {
                     return;
                     addr49:
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §#!;§() : String
      {
         return this.§^!!§;
      }
      
      public function §&h§() : Function
      {
         return this.§8!!§;
      }
      
      public function §?M§() : Function
      {
         return this.§<O§;
      }
      
      public function §6Y§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§6g§)
            {
               if(_loc3_ || _loc3_)
               {
                  addr39:
                  this.§8!!§.call(null,param1);
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function §"!6§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§6g§)
            {
               if(_loc2_ || this)
               {
                  addr28:
                  this.§<O§.call(null,param1);
               }
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function §@;§(param1:Function, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§8!!§ = param1;
            do
            {
               this.§<O§ = param2;
            }
            while(_loc3_ && param1);
            
         }
      }
      
      public function §97§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§6g§ = false;
         }
      }
      
      public function §!!C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§6g§ = true;
         }
      }
   }
}
