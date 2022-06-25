package §^!7§
{
   public class §=]§
   {
       
      
      private var §1!1§:Number;
      
      private var §?!R§:String;
      
      private var §9!`§:Function;
      
      private var §]!g§:Function;
      
      private var §'!9§:Boolean = true;
      
      public function §=]§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§?!R§ = param1;
               while(_loc3_)
               {
                  this.§1!1§ = param2;
                  if(!_loc4_)
                  {
                     return;
                     addr39:
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §>?§() : String
      {
         return this.§?!R§;
      }
      
      public function §@P§() : Function
      {
         return this.§9!`§;
      }
      
      public function §?K§() : Function
      {
         return this.§]!g§;
      }
      
      public function §<!F§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§'!9§)
            {
               if(_loc2_)
               {
                  addr38:
                  this.§9!`§.call(null,param1);
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      public function §=b§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§'!9§)
            {
               if(!_loc3_)
               {
                  this.§]!g§.call(null,param1);
               }
            }
         }
      }
      
      public function §<]§(param1:Function, param2:Function = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§9!`§ = param1;
            do
            {
               this.§]!g§ = param2;
            }
            while(!_loc3_);
            
         }
      }
      
      public function §=!&§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§'!9§ = false;
         }
      }
      
      public function §03§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§'!9§ = true;
         }
      }
   }
}
