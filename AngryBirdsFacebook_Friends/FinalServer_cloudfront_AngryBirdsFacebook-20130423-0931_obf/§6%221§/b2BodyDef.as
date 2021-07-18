package §6"1§
{
   import §6!^§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §#"+§:b2Vec2;
      
      public var §1"9§:Number;
      
      public var §#"P§:Number;
      
      public var §6"9§:Number;
      
      public var §6!z§:Boolean;
      
      public var §2"X§:Boolean;
      
      public var §-!'§:Boolean;
      
      public var §1p§:Boolean;
      
      public var §""D§:Boolean;
      
      public var §-!"§;
      
      public var §;!-§:Number;
      
      public function b2BodyDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.position = new b2Vec2();
            loop0:
            while(true)
            {
               this.§#"+§ = new b2Vec2();
               while(true)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     this.§-!"§ = null;
                     loop3:
                     while(true)
                     {
                        this.position.Set(0,0);
                        addr190:
                        while(true)
                        {
                           this.angle = 0;
                           addr183:
                           while(true)
                           {
                              this.§#"+§.Set(0,0);
                              addr159:
                              while(_loc2_)
                              {
                                 continue loop2;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  addr60:
                  if(!(_loc1_ && this))
                  {
                     if(_loc2_)
                     {
                        this.§;!-§ = 1;
                        if(!(_loc1_ && _loc2_))
                        {
                           if(_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 §§goto(addr190);
                              }
                              return;
                           }
                           §§goto(addr159);
                        }
                        loop16:
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              addr51:
                              if(!(_loc1_ && this))
                              {
                                 if(!_loc1_)
                                 {
                                    §§goto(addr60);
                                 }
                                 else
                                 {
                                    loop13:
                                    while(_loc2_ || this)
                                    {
                                       addr109:
                                       if(_loc2_ || _loc1_)
                                       {
                                          this.§1p§ = false;
                                          addr80:
                                          while(_loc2_ || _loc1_)
                                          {
                                             this.type = b2Body.b2_staticBody;
                                             while(true)
                                             {
                                                this.§""D§ = true;
                                                continue loop16;
                                             }
                                             §§goto(addr51);
                                          }
                                          while(true)
                                          {
                                             this.§#"P§ = 0;
                                             addr145:
                                             while(!_loc1_)
                                             {
                                                this.§6"9§ = 0;
                                                while(true)
                                                {
                                                   this.§6!z§ = true;
                                                   break loop13;
                                                }
                                             }
                                             §§goto(addr183);
                                             §§goto(addr80);
                                          }
                                          addr80:
                                          addr152:
                                       }
                                       while(true)
                                       {
                                          this.§2"X§ = true;
                                          break loop13;
                                          §§goto(addr109);
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          this.§-!'§ = false;
                                          continue;
                                       }
                                       §§goto(addr140);
                                    }
                                    addr102:
                                    §§goto(addr145);
                                 }
                              }
                              §§goto(addr80);
                           }
                           §§goto(addr75);
                        }
                        addr69:
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§1"9§ = 0;
            §§goto(addr152);
         }
      }
   }
}
