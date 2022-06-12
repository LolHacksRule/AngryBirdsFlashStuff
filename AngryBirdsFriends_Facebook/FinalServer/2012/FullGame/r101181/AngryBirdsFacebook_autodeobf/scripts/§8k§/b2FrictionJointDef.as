package §8k§
{
   import §#]§.b2Vec2;
   import §4!!§.b2internal;
   import §48§.b2Body;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §#C§:b2Vec2;
      
      public var §^!J§:b2Vec2;
      
      public var §"#§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§#C§ = new b2Vec2();
         }
         loop0:
         while(true)
         {
            this.§^!J§ = new b2Vec2();
            loop1:
            while(true)
            {
               super();
               while(true)
               {
                  type = b2Joint.§4!m§;
                  continue loop1;
                  addr64:
                  while(_loc2_ || _loc2_)
                  {
                     this.maxTorque = 0;
                     if(!_loc1_)
                     {
                        addr35:
                        if(!(_loc1_ && _loc1_))
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      public function §`!r§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §!!v§ = param1;
            while(true)
            {
               §'!4§ = param2;
            }
            addr78:
         }
         loop1:
         do
         {
            this.§#C§.SetV(§!!v§.GetLocalPoint(param3));
            while(!_loc5_)
            {
               this.§^!J§.SetV(§'!4§.GetLocalPoint(param3));
               if(!_loc5_)
               {
                  continue loop1;
               }
            }
            §§goto(addr78);
         }
         while(_loc5_ && param2);
         
      }
   }
}
