package §9"!§
{
   import §!D§.b2Contact;
   import §48§.b2ContactImpulse;
   import §48§.b2ContactListener;
   import §55§.b2Manifold;
   
   public class §`",§ extends b2ContactListener
   {
       
      
      public var mWorld:§4!`§;
      
      public function §`",§(param1:§4!`§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super();
            do
            {
               this.mWorld = param1;
            }
            while(_loc3_ && param1);
            
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.mWorld.§@O§.objects.§>"B§(param1.§5§().GetBody().GetUserData(),param1.§]h§().GetBody().GetUserData());
         }
      }
      
      override public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.mWorld.§@O§.objects.§7!d§(param1.§5§().GetBody().GetUserData(),param1.§]h§().GetBody().GetUserData()));
         if(!(_loc3_ && _loc2_))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            if(_loc2_)
            {
               if(_loc4_ || this)
               {
                  param1.§2s§(false);
               }
            }
         }
      }
   }
}
