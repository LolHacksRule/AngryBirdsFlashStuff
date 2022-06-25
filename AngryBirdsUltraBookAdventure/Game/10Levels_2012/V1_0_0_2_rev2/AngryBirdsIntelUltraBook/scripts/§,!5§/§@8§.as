package §,!5§
{
   import §'!9§.§?!U§;
   import §^!+§.Texture;
   
   public class §@8§
   {
       
      
      private var §^!?§:§?!U§;
      
      private var §?!2§:Number;
      
      public function §@8§(param1:Texture, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.§^!?§ = new §?!U§(param1);
               §§goto(addr53);
            }
         }
         addr53:
         while(true)
         {
            this.§?!2§ = param2;
            if(!(_loc4_ && this))
            {
               if(_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get image() : §?!U§
      {
         return this.§^!?§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§?!2§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§^!?§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr80:
                     this.§^!?§.dispose();
                  }
                  do
                  {
                     this.§^!?§ = null;
                  }
                  while(_loc1_ && _loc2_);
                  
                  addr60:
               }
               return;
            }
            §§goto(addr80);
         }
         §§goto(addr60);
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.§?!2§);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§?!2§ = §§pop();
         }
      }
      
      public function §8N§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?!2§ = param1;
         }
      }
      
      public function § !]§(param1:Texture) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§^!?§.texture = param1;
         }
      }
   }
}
