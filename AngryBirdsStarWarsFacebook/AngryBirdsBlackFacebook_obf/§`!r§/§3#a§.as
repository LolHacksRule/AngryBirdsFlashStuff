package §`!r§
{
   import §!!U§.DisplayObject;
   import §!!U§.DisplayObjectContainer;
   import §2"Y§.§1#K§;
   import §7!F§.§>"G§;
   import §^#>§.§#_§;
   
   public class §3#a§ extends §4!L§
   {
       
      
      protected var §<X§:§1#K§;
      
      protected var §]!`§:§>"G§;
      
      private var §&![§:DisplayObject;
      
      public function §3#a§(param1:§>"G§, param2:Number, param3:Number, param4:Number, param5:§1#K§)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super(param2,param3,param4,param5);
            while(true)
            {
               this.§<X§ = param5;
               while(true)
               {
                  this.§]!`§ = param1;
                  §§goto(addr63);
               }
            }
         }
         addr63:
         while(true)
         {
            this.§&![§ = this.§]!`§.getFrameWithOffset(§3! §,this.§&![§);
            if(_loc6_ || param3)
            {
               if(!_loc7_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr58:
      }
      
      public function get §[!8§() : DisplayObject
      {
         return this.§&![§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§&![§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§&![§);
                     addr78:
                     while(true)
                     {
                        §§pop().dispose();
                        addr79:
                        while(true)
                        {
                           this.§&![§ = null;
                           addr60:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr76:
               }
               loop1:
               while(true)
               {
                  this.§<X§ = null;
                  while(true)
                  {
                     if(_loc1_)
                     {
                        this.§]!`§ = null;
                        if(_loc1_)
                        {
                           if(_loc1_)
                           {
                              if(_loc1_ || this)
                              {
                                 break loop1;
                              }
                              break;
                           }
                           continue loop1;
                        }
                        continue;
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr79);
               }
               return;
            }
            §§goto(addr78);
         }
         §§goto(addr60);
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:DisplayObjectContainer = null;
         §§push(super.update(param1));
         if(_loc6_ || param1)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:DisplayObject = this.§]!`§.getFrameWithOffset(§3! §,this.§&![§);
         if(!_loc5_)
         {
            if(_loc3_ != this.§&![§)
            {
               if(!(_loc5_ && param1))
               {
                  §§push(this.§&![§);
                  if(!_loc5_)
                  {
                     (_loc4_ = §§pop().parent).removeChild(this.§&![§);
                     if(_loc6_)
                     {
                        _loc4_.addChild(_loc3_);
                        if(!_loc6_)
                        {
                        }
                        addr74:
                        §§push(this.§&![§);
                        if(_loc6_ || param1)
                        {
                           §§pop().scaleX = §8"2§;
                           if(!_loc5_)
                           {
                              §§push(this.§&![§);
                              while(true)
                              {
                                 §§pop().scaleY = §8"2§;
                              }
                              addr178:
                              addr97:
                           }
                           loop6:
                           while(true)
                           {
                              §§push(this.§&![§);
                              addr156:
                              addr173:
                              while(_loc5_ && this)
                              {
                                 continue loop6;
                              }
                              while(true)
                              {
                                 §§pop().rotation = §[<§;
                                 loop1:
                                 while(true)
                                 {
                                    §§push(this.§&![§);
                                    loop2:
                                    while(true)
                                    {
                                       §§push(§8!+§ / §#_§.§8]§);
                                       addr149:
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          addr150:
                                          while(!_loc5_)
                                          {
                                             continue loop2;
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                                 §§goto(addr156);
                              }
                           }
                           addr180:
                        }
                        while(true)
                        {
                           §§push(§=!Z§ / §#_§.§8]§);
                           if(!(_loc5_ && _loc3_))
                           {
                              §§pop().y = §§pop();
                              if(_loc6_ || param1)
                              {
                                 if(!_loc6_)
                                 {
                                    §§goto(addr180);
                                 }
                                 §§goto(addr141);
                              }
                              §§goto(addr150);
                           }
                           §§goto(addr149);
                        }
                     }
                     this.§&![§ = _loc3_;
                     §§goto(addr74);
                  }
                  §§goto(addr173);
               }
               §§goto(addr152);
            }
            §§goto(addr74);
         }
         §§goto(addr97);
      }
   }
}
