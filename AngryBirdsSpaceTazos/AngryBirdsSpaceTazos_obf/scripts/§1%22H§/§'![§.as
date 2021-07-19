package §1"H§
{
   import §"!&§.§"v§;
   import §'4§.§^g§;
   import §4&§.§#r§;
   import §7!8§.DisplayObject;
   import §7!8§.DisplayObjectContainer;
   
   public class §'![§ extends §>g§
   {
       
      
      protected var §2"!§:§"v§;
      
      protected var §]!k§:§#r§;
      
      private var §@!]§:DisplayObject;
      
      public function §'![§(param1:§#r§, param2:Number, param3:Number, param4:Number, param5:§"v§)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            super(param2,param3,param4,param5);
         }
         loop0:
         while(true)
         {
            this.§2"!§ = param5;
            while(true)
            {
               this.§]!k§ = param1;
               while(!(_loc6_ && param3))
               {
                  if(_loc7_)
                  {
                     this.§@!]§ = this.§]!k§.getFrameWithOffset(§=!c§,this.§@!]§);
                     if(_loc7_)
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
      
      public function get §,"F§() : DisplayObject
      {
         return this.§@!]§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§@!]§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§@!]§);
                     addr88:
                     while(true)
                     {
                        §§pop().dispose();
                        addr89:
                        while(true)
                        {
                           this.§@!]§ = null;
                           addr65:
                           while(true)
                           {
                           }
                        }
                     }
                     addr53:
                     while(true)
                     {
                        if(!(_loc1_ || _loc1_))
                        {
                           continue loop0;
                        }
                        this.§]!k§ = null;
                        if(!(_loc1_ || this))
                        {
                           continue;
                        }
                        if(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              return;
                              addr48:
                           }
                           break;
                        }
                        §§goto(addr65);
                     }
                     §§goto(addr89);
                  }
               }
               while(true)
               {
                  this.§2"!§ = null;
                  §§goto(addr53);
                  §§goto(addr65);
               }
               §§goto(addr48);
            }
            §§goto(addr88);
         }
         §§goto(addr89);
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:DisplayObjectContainer = null;
         §§push(super.update(param1));
         if(_loc5_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:DisplayObject = this.§]!k§.getFrameWithOffset(§=!c§,this.§@!]§);
         if(!_loc6_)
         {
            if(_loc3_ != this.§@!]§)
            {
               if(!(_loc6_ && param1))
               {
                  addr47:
                  §§push(this.§@!]§);
                  if(!_loc6_)
                  {
                     (_loc4_ = §§pop().parent).removeChild(this.§@!]§);
                     if(_loc5_ || this)
                     {
                        _loc4_.addChild(_loc3_);
                        if(!_loc5_)
                        {
                        }
                        addr73:
                        §§push(this.§@!]§);
                        if(_loc5_ || _loc2_)
                        {
                           §§pop().scaleX = §=T§;
                           if(!(_loc6_ && param1))
                           {
                              §§push(this.§@!]§);
                              while(true)
                              {
                                 §§pop().scaleY = §=T§;
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this.§@!]§);
                                    loop6:
                                    while(true)
                                    {
                                       §§pop().rotation = §"X§;
                                       addr169:
                                       while(true)
                                       {
                                          §§push(this.§@!]§);
                                          loop1:
                                          while(true)
                                          {
                                             if(!(_loc5_ || param1))
                                             {
                                                continue loop6;
                                             }
                                             while(true)
                                             {
                                                §§push(§""4§ / §^g§.§5!-§);
                                                addr145:
                                                while(true)
                                                {
                                                   §§pop().x = §§pop();
                                                   addr146:
                                                   while(true)
                                                   {
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop5;
                                                }
                                             }
                                          }
                                          continue loop6;
                                       }
                                    }
                                 }
                              }
                              addr172:
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr172);
                     }
                     this.§@!]§ = _loc3_;
                     §§goto(addr73);
                  }
                  §§goto(addr141);
               }
               §§goto(addr169);
            }
            §§goto(addr73);
         }
         §§goto(addr47);
      }
   }
}
