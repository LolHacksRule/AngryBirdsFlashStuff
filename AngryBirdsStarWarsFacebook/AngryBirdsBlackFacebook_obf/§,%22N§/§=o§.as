package §,"N§
{
   import §!"W§.§="5§;
   import flash.events.EventDispatcher;
   
   public class §=o§ extends EventDispatcher
   {
       
      
      private var §="K§:int;
      
      public function §=o§(param1:int = 0)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            do
            {
               this.§="K§ = param1;
            }
            while(!_loc3_);
            
         }
      }
      
      public function get starCoins() : int
      {
         return this.§="K§;
      }
      
      public function §@w§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§="K§ = param1;
            do
            {
               dispatchEvent(new §="5§(§="5§.§1c§,this.§="K§));
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function §9"I§(param1:int) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§="K§ += param1;
            while(true)
            {
               dispatchEvent(new §="5§(§="5§.ADD,this.§="K§));
               while(_loc2_ || param1)
               {
                  dispatchEvent(new §="5§(§="5§.§1c§,this.§="K§));
                  if(_loc3_ && this)
                  {
                     continue;
                  }
                  return true;
                  addr55:
               }
            }
         }
         §§goto(addr55);
      }
      
      public function §12§(param1:int) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§="K§ - param1 >= 0)
            {
               if(_loc3_ || this)
               {
                  this.§="K§ -= param1;
               }
               do
               {
                  dispatchEvent(new §="5§(§="5§.§["P§,this.§="K§));
                  do
                  {
                     dispatchEvent(new §="5§(§="5§.§1c§,this.§="K§));
                  }
                  while(!_loc3_);
                  
               }
               while(_loc2_);
               
               return true;
            }
            else
            {
               addr20:
               §§push(false);
               if(!(_loc2_ && _loc3_))
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr20);
      }
      
      public function §1#9§(param1:int) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§="K§ >= param1)
            {
               if(_loc3_ || this)
               {
                  addr40:
                  §§push(true);
                  if(_loc3_ || this)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr59:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr59);
         }
         §§goto(addr40);
      }
   }
}
