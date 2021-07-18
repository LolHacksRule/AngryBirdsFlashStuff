package §3g§
{
   import §&!"§.b2Body;
   import §9"§.b2Vec2;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §4B§:b2Vec2;
      
      public var § !Q§:b2Vec2;
      
      public var §5!-§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§4B§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§ !Q§ = new b2Vec2();
               while(true)
               {
                  super();
                  while(!(_loc2_ && _loc2_))
                  {
                     type = b2Joint.§`T§;
                     loop3:
                     while(!_loc2_)
                     {
                        if(_loc1_)
                        {
                           this.§5!-§ = 0;
                           while(true)
                           {
                              this.maxTorque = 0;
                              if(!_loc2_)
                              {
                                 if(!(_loc2_ && this))
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                           }
                           return;
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      public function §1D§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            §<§ = param1;
            while(true)
            {
               §,!M§ = param2;
               loop1:
               while(_loc4_ || param3)
               {
                  while(true)
                  {
                     this.§4B§.SetV(§<§.GetLocalPoint(param3));
                     do
                     {
                        this.§ !Q§.SetV(§,!M§.GetLocalPoint(param3));
                     }
                     while(!_loc4_);
                     
                     if(!_loc5_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr79);
      }
   }
}
