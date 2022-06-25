package §2!'§
{
   import §#I§.b2Body;
   import §&H§.b2Vec2;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §'G§:b2Vec2;
      
      public var §true§:b2Vec2;
      
      public var § !S§:b2Vec2;
      
      public var §&!A§:Boolean;
      
      public var §;!R§:Number;
      
      public var § use§:Number;
      
      public var § !q§:Boolean;
      
      public var §;!Q§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§'G§ = new b2Vec2();
            while(true)
            {
               this.§true§ = new b2Vec2();
               addr158:
               while(true)
               {
                  this.§ !S§ = new b2Vec2();
                  addr152:
                  loop2:
                  while(true)
                  {
                     super();
                     addr146:
                     while(true)
                     {
                        type = b2Joint.§-f§;
                        while(true)
                        {
                           this.§ !S§.Set(1,0);
                           loop5:
                           while(true)
                           {
                              this.§&!A§ = false;
                              while(true)
                              {
                                 this.§;!R§ = 0;
                                 addr39:
                                 if(_loc1_ || this)
                                 {
                                    continue loop5;
                                 }
                              }
                           }
                           if(!(_loc2_ && _loc1_))
                           {
                              if(_loc1_)
                              {
                                 return;
                                 addr62:
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               addr84:
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               this.motorSpeed = 0;
               if(_loc1_ || _loc2_)
               {
                  §§goto(addr39);
               }
               loop10:
               while(true)
               {
                  if(_loc1_ || this)
                  {
                     §§goto(addr84);
                  }
                  else
                  {
                     loop9:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           if(_loc1_)
                           {
                              if(_loc1_)
                              {
                                 this.§;!Q§ = 0;
                                 continue loop10;
                              }
                              §§goto(addr158);
                           }
                           break;
                        }
                        loop8:
                        while(true)
                        {
                           if(_loc1_)
                           {
                              this.§ !q§ = false;
                              continue loop9;
                           }
                           addr114:
                           while(true)
                           {
                              this.§ use§ = 0;
                              continue loop8;
                           }
                           §§goto(addr62);
                        }
                     }
                     §§goto(addr146);
                  }
               }
               addr91:
               §§goto(addr152);
            }
         }
         §§goto(addr114);
      }
      
      public function §`!D§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            §19§ = param1;
         }
         loop0:
         while(true)
         {
            §"@§ = param2;
            while(true)
            {
               this.§'G§ = §19§.GetLocalPoint(param3);
               while(_loc5_)
               {
                  continue loop0;
                  this.§true§ = §"@§.GetLocalPoint(param3);
                  do
                  {
                     this.§ !S§ = §19§.GetLocalVector(param4);
                  }
                  while(!_loc5_);
                  
                  if(!_loc6_)
                  {
                     return;
                  }
               }
            }
         }
      }
   }
}
