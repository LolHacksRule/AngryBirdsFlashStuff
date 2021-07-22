package §,,§
{
   import §,"[§.b2internal;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §-!,§:b2Vec2;
      
      public var §["9§:b2Vec2;
      
      public var §1b§:Number;
      
      public function b2WeldJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§-!,§ = new b2Vec2();
         }
         loop0:
         while(true)
         {
            this.§["9§ = new b2Vec2();
            while(true)
            {
               super();
               while(_loc1_)
               {
                  continue loop0;
                  type = b2Joint.§"L§;
                  do
                  {
                     this.§1b§ = 0;
                  }
                  while(!_loc1_);
                  
                  if(_loc1_ || _loc1_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function §6!Q§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §`y§ = param1;
            loop0:
            while(true)
            {
               §8!7§ = param2;
               loop1:
               while(true)
               {
                  this.§-!,§.SetV(§`y§.GetLocalPoint(param3));
                  while(true)
                  {
                     this.§["9§.SetV(§8!7§.GetLocalPoint(param3));
                     addr63:
                     while(_loc4_)
                     {
                        if(!_loc5_)
                        {
                           continue;
                        }
                        continue loop0;
                     }
                     continue loop1;
                     addr43:
                     if(_loc4_)
                     {
                        return;
                        addr55:
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§1b§ = §8!7§.GetAngle() - §`y§.GetAngle();
            if(!_loc5_)
            {
               §§goto(addr43);
            }
            §§goto(addr63);
         }
         §§goto(addr55);
      }
   }
}
