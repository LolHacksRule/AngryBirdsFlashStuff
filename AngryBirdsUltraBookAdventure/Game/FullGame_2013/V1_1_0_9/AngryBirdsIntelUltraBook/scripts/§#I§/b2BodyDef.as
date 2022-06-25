package §#I§
{
   import §&H§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §;!"§:b2Vec2;
      
      public var §-!^§:Number;
      
      public var §#"$§:Number;
      
      public var §"!K§:Number;
      
      public var §]#§:Boolean;
      
      public var §-!A§:Boolean;
      
      public var §%w§:Boolean;
      
      public var §2!C§:Boolean;
      
      public var §6!@§:Boolean;
      
      public var §]!=§;
      
      public var §@!r§:Number;
      
      public function b2BodyDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.position = new b2Vec2();
            loop0:
            while(true)
            {
               this.§;!"§ = new b2Vec2();
               loop1:
               while(true)
               {
                  super();
                  while(true)
                  {
                     this.§]!=§ = null;
                     addr50:
                     if(!(_loc1_ || _loc1_))
                     {
                        continue;
                     }
                     this.§@!r§ = 1;
                     addr57:
                     if(!_loc1_)
                     {
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr50);
                           }
                           else
                           {
                              loop12:
                              while(true)
                              {
                                 this.§2!C§ = false;
                                 loop13:
                                 while(true)
                                 {
                                    this.type = b2Body.b2_staticBody;
                                    loop14:
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop13;
                                       }
                                       if(!_loc2_)
                                       {
                                          addr67:
                                          if(!(_loc1_ || _loc1_))
                                          {
                                             break;
                                          }
                                          continue loop1;
                                       }
                                       addr137:
                                       addr194:
                                       while(_loc1_ || _loc2_)
                                       {
                                          this.§"!K§ = 0;
                                          loop9:
                                          for(; !_loc2_; if(_loc1_ || this)
                                          {
                                             this.§%w§ = false;
                                             continue loop12;
                                          })
                                          {
                                             this.§]#§ = true;
                                             loop10:
                                             while(true)
                                             {
                                                this.§-!A§ = true;
                                                while(true)
                                                {
                                                   if(!(_loc2_ && this))
                                                   {
                                                      continue loop9;
                                                   }
                                                   continue loop10;
                                                   addr36:
                                                   if(!(_loc2_ && this))
                                                   {
                                                      return;
                                                   }
                                                }
                                                continue loop9;
                                             }
                                          }
                                          while(true)
                                          {
                                             this.§;!"§.Set(0,0);
                                             addr182:
                                             while(true)
                                             {
                                                this.§-!^§ = 0;
                                                break loop14;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          this.angle = 0;
                                          §§goto(addr187);
                                          §§goto(addr137);
                                       }
                                       addr137:
                                       if(!(_loc1_ || this))
                                       {
                                          continue;
                                       }
                                       §§goto(addr36);
                                    }
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          addr151:
                                          if(!(_loc2_ && this))
                                          {
                                             continue loop0;
                                          }
                                          addr199:
                                          while(true)
                                          {
                                             this.position.Set(0,0);
                                             §§goto(addr194);
                                             §§goto(addr151);
                                          }
                                       }
                                       break;
                                       §§goto(addr67);
                                    }
                                    §§goto(addr182);
                                 }
                                 continue loop1;
                              }
                           }
                           §§goto(addr57);
                        }
                        continue;
                        addr48:
                     }
                     §§goto(addr137);
                  }
               }
            }
         }
         §§goto(addr199);
      }
   }
}
