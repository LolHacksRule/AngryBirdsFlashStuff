package § !V§
{
   import §+S§.b2Body;
   import §2"=§.b2Vec2;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §!2§:b2Vec2;
      
      public var § !c§:b2Vec2;
      
      public var length:Number;
      
      public var §2!5§:Number;
      
      public var §9!J§:Number;
      
      public function b2DistanceJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§!2§ = new b2Vec2();
            while(true)
            {
               this.§ !c§ = new b2Vec2();
            }
            addr105:
         }
         loop1:
         while(true)
         {
            super();
            do
            {
               type = b2Joint.§9!T§;
               do
               {
                  this.length = 1;
                  continue loop1;
               }
               while(!(_loc1_ || this));
               
            }
            while(_loc2_ && _loc1_);
            
            return;
         }
      }
      
      public function §1o§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            §@!<§ = param1;
            while(true)
            {
               §3j§ = param2;
               loop1:
               while(true)
               {
                  addr36:
                  while(true)
                  {
                     this.§!2§.SetV(§@!<§.GetLocalPoint(param3));
                     continue loop1;
                  }
               }
               if(!(_loc8_ || param2))
               {
                  continue;
               }
               this.§ !c§.SetV(§3j§.GetLocalPoint(param4));
               if(!(_loc7_ && param1))
               {
                  while(false)
                  {
                     §§goto(addr36);
                  }
                  §§push(param4.x);
                  if(_loc8_)
                  {
                     §§push(§§pop() - param3.x);
                     if(_loc8_ || this)
                     {
                        addr91:
                        §§push(Number(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     §§push(param4.y);
                     if(_loc8_ || param2)
                     {
                        §§push(§§pop() - param3.y);
                        if(_loc8_ || this)
                        {
                           addr112:
                           §§push(Number(§§pop()));
                        }
                        var _loc6_:* = §§pop();
                        if(_loc8_)
                        {
                           this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
                        }
                        do
                        {
                           this.§2!5§ = 0;
                           do
                           {
                              this.§9!J§ = 0;
                           }
                           while(!_loc8_);
                           
                        }
                        while(!(_loc8_ || param1));
                        
                        return;
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr91);
                  addr34:
               }
               §§goto(addr43);
            }
         }
         §§goto(addr34);
      }
   }
}
