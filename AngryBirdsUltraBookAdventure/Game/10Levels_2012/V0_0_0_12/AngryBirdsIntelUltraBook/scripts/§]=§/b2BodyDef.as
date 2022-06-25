package §]=§
{
   import §&L§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §5p§:b2Vec2;
      
      public var §;-§:Number;
      
      public var §3j§:Number;
      
      public var §=!8§:Number;
      
      public var §3!E§:Boolean;
      
      public var §,!e§:Boolean;
      
      public var §>m§:Boolean;
      
      public var §3^§:Boolean;
      
      public var §]!%§:Boolean;
      
      public var §?!X§;
      
      public var §%!"§:Number;
      
      public function b2BodyDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.position = new b2Vec2();
            loop0:
            while(true)
            {
               this.§5p§ = new b2Vec2();
               while(true)
               {
                  super();
                  continue loop0;
                  addr165:
                  if(!(_loc1_ || this))
                  {
                     continue;
                  }
                  this.§5p§.Set(0,0);
                  loop6:
                  while(true)
                  {
                     this.§;-§ = 0;
                     while(true)
                     {
                        this.§3j§ = 0;
                        loop8:
                        for(; _loc1_; while(_loc1_ || _loc1_)
                        {
                           this.§,!e§ = true;
                           §§goto(addr119);
                        })
                        {
                           this.§=!8§ = 0;
                           while(true)
                           {
                              this.§3!E§ = true;
                              continue loop8;
                              addr83:
                              if(_loc1_ || this)
                              {
                                 this.type = b2Body.b2_staticBody;
                                 while(_loc1_ || this)
                                 {
                                    this.§]!%§ = true;
                                    while(_loc1_ || _loc1_)
                                    {
                                       this.§%!"§ = 1;
                                       if(!_loc1_)
                                       {
                                          continue;
                                       }
                                       addr34:
                                       if(_loc1_ || _loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                return;
                                                addr45:
                                             }
                                             while(true)
                                             {
                                                this.angle = 0;
                                             }
                                             addr190:
                                          }
                                          else
                                          {
                                             while(_loc1_)
                                             {
                                                this.§>m§ = false;
                                                while(!_loc2_)
                                                {
                                                   continue loop6;
                                                   while(!(_loc2_ && _loc1_))
                                                   {
                                                      §§goto(addr83);
                                                      §§goto(addr34);
                                                   }
                                                }
                                                continue loop8;
                                             }
                                             addr119:
                                          }
                                          while(!_loc2_)
                                          {
                                             §§goto(addr165);
                                          }
                                          while(true)
                                          {
                                             this.position.Set(0,0);
                                             §§goto(addr190);
                                          }
                                          addr195:
                                       }
                                       else
                                       {
                                          §§goto(addr76);
                                       }
                                       §§goto(addr105);
                                    }
                                 }
                                 continue loop0;
                                 addr64:
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr114);
      }
   }
}
