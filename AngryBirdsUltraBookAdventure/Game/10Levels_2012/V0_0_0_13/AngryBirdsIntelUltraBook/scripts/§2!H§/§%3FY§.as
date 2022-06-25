package §2!H§
{
   import §6!7§.§-m§;
   import §7i§.Texture;
   
   public class §?Y§
   {
       
      
      private var §"!P§:§-m§;
      
      private var §5!i§:Number;
      
      public function §?Y§(param1:Texture, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super();
            while(true)
            {
               this.§"!P§ = new §-m§(param1);
               §§goto(addr58);
            }
         }
         addr58:
         while(true)
         {
            this.§5!i§ = param2;
            if(!_loc4_)
            {
               if(!(_loc4_ && _loc3_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get image() : §-m§
      {
         return this.§"!P§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§5!i§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§"!P§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr71:
                     this.§"!P§.dispose();
                     do
                     {
                        this.§"!P§ = null;
                     }
                     while(_loc1_ && this);
                     
                     addr73:
                  }
                  §§goto(addr73);
               }
               return;
            }
         }
         §§goto(addr71);
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this);
            §§push(this.§5!i§);
            if(_loc2_ || param1)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§5!i§ = §§pop();
         }
      }
      
      public function §6X§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§5!i§ = param1;
         }
      }
      
      public function §[B§(param1:Texture) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§"!P§.texture = param1;
         }
      }
   }
}
