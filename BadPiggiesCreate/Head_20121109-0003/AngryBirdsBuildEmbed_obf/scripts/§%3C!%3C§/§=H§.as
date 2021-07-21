package §<!<§
{
   import § !t§.b2ContactImpulse;
   import § !t§.b2ContactListener;
   import §#A§.b2Contact;
   import §'!;§.b2Manifold;
   
   public class §=H§ extends b2ContactListener
   {
       
      
      public var §&4§:§!F§;
      
      public function §=H§(param1:§!F§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               addr23:
               this.§&4§ = param1;
            }
            return;
         }
         §§goto(addr23);
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
      }
      
      override public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§&4§.§-n§.objects.objectCollision(param1.§,^§().GetBody().GetUserData(),param1.§'!+§().GetBody().GetUserData()));
         if(_loc3_ || _loc3_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            if(_loc2_)
            {
               if(_loc3_)
               {
                  addr54:
                  param1.§!R§(false);
               }
            }
            return;
         }
         §§goto(addr54);
      }
   }
}
