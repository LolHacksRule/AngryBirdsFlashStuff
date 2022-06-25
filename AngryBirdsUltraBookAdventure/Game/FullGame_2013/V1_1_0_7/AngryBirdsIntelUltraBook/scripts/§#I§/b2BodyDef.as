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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.position = new b2Vec2();
            loop0:
            while(true)
            {
               this.§;!"§ = new b2Vec2();
               while(true)
               {
                  super();
                  addr95:
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  this.type = b2Body.b2_staticBody;
                  loop14:
                  while(true)
                  {
                     if(!(_loc1_ && _loc1_))
                     {
                        if(_loc2_)
                        {
                           this.§6!@§ = true;
                           while(_loc2_)
                           {
                              this.§@!r§ = 1;
                              if(!(_loc1_ && this))
                              {
                                 continue loop14;
                              }
                           }
                           loop8:
                           while(true)
                           {
                              this.§"!K§ = 0;
                              addr157:
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    this.§]#§ = true;
                                    break loop14;
                                 }
                                 addr176:
                                 addr117:
                                 while(true)
                                 {
                                    this.§-!^§ = 0;
                                    addr169:
                                    while(true)
                                    {
                                       this.§#"$§ = 0;
                                       continue loop8;
                                    }
                                 }
                                 for(; _loc2_ || this; while(_loc2_ || _loc1_)
                                 {
                                    §§goto(addr95);
                                    continue loop14;
                                 })
                                 {
                                    if(_loc2_)
                                    {
                                       addr126:
                                       if(!(_loc1_ && this))
                                       {
                                          this.§2!C§ = false;
                                          continue;
                                       }
                                       addr181:
                                       while(true)
                                       {
                                          this.§;!"§.Set(0,0);
                                          §§goto(addr176);
                                          §§goto(addr126);
                                       }
                                    }
                                    §§goto(addr169);
                                 }
                              }
                              continue loop0;
                           }
                        }
                        break;
                     }
                     §§goto(addr88);
                     §§goto(addr157);
                  }
                  while(_loc2_)
                  {
                     continue loop0;
                  }
                  §§goto(addr198);
               }
            }
         }
         §§goto(addr214);
      }
   }
}
