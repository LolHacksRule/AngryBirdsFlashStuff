package §=;§
{
   import §+!g§.b2internal;
   import §>!8§.b2Vec2;
   import §>!L§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §>!g§:b2Vec2;
      
      public var §&1§:b2Vec2;
      
      public var §6![§:Number;
      
      public var §0$§:Boolean;
      
      public var §!!e§:Number;
      
      public var §+!9§:Number;
      
      public var § in§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §`!?§:Number;
      
      public function b2RevoluteJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§>!g§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§&1§ = new b2Vec2();
               addr180:
               while(true)
               {
                  super();
                  continue loop0;
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §2@§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §7l§ = param1;
         }
         loop0:
         do
         {
            §<H§ = param2;
            while(true)
            {
               this.§>!g§ = §7l§.GetLocalPoint(param3);
               while(_loc4_)
               {
                  this.§&1§ = §<H§.GetLocalPoint(param3);
                  while(_loc4_)
                  {
                     this.§6![§ = §<H§.GetAngle() - §7l§.GetAngle();
                     if(!_loc5_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(!_loc4_);
         
      }
   }
}
