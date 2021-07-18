package §^#>§
{
   import §+#$§.b2ContactImpulse;
   import §+#$§.b2ContactListener;
   import §3"5§.b2Manifold;
   import §7P§.§1#E§;
   import §7P§.§7B§;
   import §8[§.b2Contact;
   
   public class §1!y§ extends b2ContactListener
   {
       
      
      public var mWorld:§^P§;
      
      public function §1!y§(param1:§^P§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
         }
         do
         {
            this.mWorld = param1;
         }
         while(_loc3_ && this);
         
      }
      
      override public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§7B§ = param1.§?!@§().GetBody().GetUserData() as §7B§;
         var _loc3_:§7B§ = param1.§;"R§().GetBody().GetUserData() as §7B§;
         §§push(this.mWorld.§2#G§.objects.objectCollision(_loc2_,_loc3_,param1));
         if(!(_loc5_ && _loc2_))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:*;
         if(_loc4_ = §§pop())
         {
            if(_loc6_ || this)
            {
               param1.§5G§(false);
            }
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§7B§ = param1.§?!@§().GetBody().GetUserData() as §7B§;
         var _loc3_:§7B§ = param1.§;"R§().GetBody().GetUserData() as §7B§;
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc3_ is §1#E§);
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§push(param1.§?!@§().GetBody());
                     addr126:
                     while(true)
                     {
                        §§push(true);
                        addr127:
                        while(true)
                        {
                           §§pop().SetAwake(§§pop());
                           addr128:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr123:
               }
               while(true)
               {
                  §§push(_loc2_ is §1#E§);
                  if(!_loc5_)
                  {
                     break;
                  }
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§push(param1.§;"R§().GetBody());
                        if(!(_loc5_ || _loc2_))
                        {
                           break;
                        }
                        §§push(true);
                        if(_loc5_)
                        {
                           §§pop().SetAwake(§§pop());
                           while(true)
                           {
                           }
                           addr108:
                        }
                        else
                        {
                           §§goto(addr127);
                        }
                        addr55:
                        if(!(_loc5_ || _loc2_))
                        {
                           continue;
                        }
                        if(_loc5_ || this)
                        {
                           if(!(_loc4_ && _loc2_))
                           {
                              return;
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr126);
                  }
                  while(true)
                  {
                     this.mWorld.§2#G§.objects.§#K§(_loc2_,_loc3_);
                     if(_loc4_)
                     {
                        continue;
                     }
                     §§goto(addr55);
                  }
               }
            }
         }
         §§goto(addr128);
      }
   }
}
