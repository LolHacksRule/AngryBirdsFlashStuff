package §3g§
{
   import §&!"§.b2Body;
   import §9"§.b2Vec2;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §4B§:b2Vec2;
      
      public var § !Q§:b2Vec2;
      
      public var §72§:Number;
      
      public function b2WeldJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§4B§ = new b2Vec2();
         }
         loop0:
         while(true)
         {
            this.§ !Q§ = new b2Vec2();
            while(true)
            {
               super();
               while(_loc1_ || this)
               {
                  type = b2Joint.§]t§;
                  while(_loc1_ || _loc2_)
                  {
                     if(!_loc2_)
                     {
                        this.§72§ = 0;
                        if(!_loc2_)
                        {
                           return;
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function §1D§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §<§ = param1;
            while(true)
            {
               §,!M§ = param2;
               addr73:
               if(_loc4_ || this)
               {
                  this.§ !Q§.SetV(§,!M§.GetLocalPoint(param3));
                  do
                  {
                     this.§72§ = §,!M§.GetAngle() - §<§.GetAngle();
                  }
                  while(!_loc4_);
                  
                  addr80:
                  if(_loc5_ && param2)
                  {
                     while(_loc4_ || this)
                     {
                        §§goto(addr73);
                        §§goto(addr80);
                     }
                     while(true)
                     {
                        this.§4B§.SetV(§<§.GetLocalPoint(param3));
                        §§goto(addr66);
                     }
                     addr66:
                     addr95:
                  }
                  return;
               }
            }
         }
         §§goto(addr95);
      }
   }
}
