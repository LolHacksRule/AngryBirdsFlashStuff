package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§?#^§;
   import §<"B§.§94§;
   
   public class § "=§ extends §1#E§
   {
       
      
      protected var § $§:§;!i§;
      
      public function § "=§(param1:Sprite, param2:b2World, param3:§"t§, param4:§?#^§, param5:§94§)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super(param1,param2,param3,param4,param5);
         }
      }
      
      public function set §=?§(param1:§;!i§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§ $§ = param1;
         }
      }
      
      public function get §=?§() : §;!i§
      {
         return this.§ $§;
      }
      
      override public function collidedWith(param1:§7B§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.collidedWith(param1);
         }
         while(true)
         {
            §§push(this.§ $§);
            if(!(_loc3_ && param1))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     continue;
                  }
                  addr68:
               }
               return;
            }
            break;
         }
         §§pop().§7`§(param1,this);
         §§goto(addr68);
      }
      
      override public function collisionEnded(param1:§7B§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super.collisionEnded(param1);
            do
            {
               §§push(this.§ $§);
               if(_loc2_ || this)
               {
                  if(!§§pop())
                  {
                     §§goto(addr24);
                  }
                  if(!(_loc2_ || _loc3_))
                  {
                     continue;
                  }
                  §§push(this.§ $§);
               }
               §§pop().§0">§(param1,this);
            }
            while(!_loc2_);
            
         }
         addr24:
      }
   }
}
