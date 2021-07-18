package §3g§
{
   import §&!"§.b2Body;
   import §9"§.b2Vec2;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §4B§:b2Vec2;
      
      public var § !Q§:b2Vec2;
      
      public var §=!P§:b2Vec2;
      
      public var §9[§:Boolean;
      
      public var §^!<§:Number;
      
      public var §1g§:Number;
      
      public var §<S§:Boolean;
      
      public var §6f§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
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
                  this.§=!P§ = new b2Vec2();
                  continue loop0;
                  addr88:
                  if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  }
                  this.§6f§ = 0;
                  while(true)
                  {
                     if(_loc1_ || _loc2_)
                     {
                        if(!_loc1_)
                        {
                           break;
                        }
                        if(!_loc2_)
                        {
                           continue;
                        }
                        continue loop0;
                     }
                     loop8:
                     while(true)
                     {
                        this.§<S§ = false;
                        while(true)
                        {
                           if(_loc1_)
                           {
                              addr71:
                              if(_loc2_ && _loc1_)
                              {
                                 break;
                              }
                              §§goto(addr88);
                           }
                           addr105:
                           addr117:
                           while(_loc1_ || _loc2_)
                           {
                              this.§1g§ = 0;
                              continue loop8;
                           }
                           addr39:
                           while(true)
                           {
                              this.§^!<§ = 0;
                              §§goto(addr105);
                           }
                           if(_loc2_ && _loc1_)
                           {
                              continue;
                           }
                           if(_loc1_)
                           {
                              return;
                           }
                           addr124:
                           while(true)
                           {
                              this.§9[§ = false;
                              §§goto(addr117);
                           }
                           addr124:
                        }
                        addr130:
                        while(true)
                        {
                           this.§=!P§.Set(1,0);
                           §§goto(addr124);
                           §§goto(addr71);
                        }
                     }
                  }
                  while(true)
                  {
                     type = b2Joint.§%!"§;
                     §§goto(addr130);
                  }
               }
            }
         }
         §§goto(addr124);
      }
      
      public function §1D§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §<§ = param1;
            while(true)
            {
               §,!M§ = param2;
            }
            addr91:
         }
         loop1:
         while(true)
         {
            this.§4B§ = §<§.GetLocalPoint(param3);
            addr70:
            while(!_loc5_)
            {
               this.§ !Q§ = §,!M§.GetLocalPoint(param3);
               continue loop1;
            }
            §§goto(addr91);
         }
      }
   }
}
