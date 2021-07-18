package §^a§
{
   import §6;§.§2^§;
   import §]u§.§#=§;
   import §]u§.§<=§;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.TouchEvent;
   
   public class DisplayObject extends EventDispatcher
   {
      
      private static var §&-§:Vector.<DisplayObject>;
      
      private static var §8_§:Rectangle;
      
      private static var §&!T§:Matrix;
      
      private static var §8Y§:Matrix;
      
      protected static var §,!=§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §&-§ = new Vector.<DisplayObject>(0);
            loop0:
            while(true)
            {
               §8_§ = new Rectangle();
               loop1:
               while(true)
               {
                  §&!T§ = new Matrix();
                  while(!_loc2_)
                  {
                     §8Y§ = new Matrix();
                     loop3:
                     while(!_loc2_)
                     {
                        continue loop1;
                        while(true)
                        {
                           §,!=§ = 0;
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr54);
      }
      
      private var §7F§:Number;
      
      private var §6_§:Number;
      
      private var §4!=§:Number;
      
      private var §>!D§:Number;
      
      private var §3!W§:Number;
      
      private var §8N§:Number;
      
      private var §!!&§:Number;
      
      private var mAlpha:Number;
      
      private var §>o§:Boolean;
      
      private var §4x§:Boolean;
      
      private var §^!d§:Number;
      
      private var mName:String;
      
      private var §,i§:Number;
      
      private var §&!c§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super();
            if(!_loc3_)
            {
               if(getQualifiedClassName(this) == "starling.display::DisplayObject")
               {
                  if(_loc2_ || this)
                  {
                     throw new §<=§();
                  }
               }
               else
               {
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this.§!!&§ = 0);
                  if(!(_loc3_ && this))
                  {
                     var _loc1_:*;
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§>!D§ = §§pop();
                  §§push(_loc1_);
                  if(_loc2_)
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§4!=§ = §§pop();
                  §§push(_loc1_);
                  if(_loc2_)
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§6_§ = §§pop();
                  §§pop().§7F§ = _loc1_;
                  if(_loc2_)
                  {
                     §§push(this);
                     §§push(this);
                     §§push(this.mAlpha = 1);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(_loc1_ = §§pop());
                     }
                     §§pop().§8N§ = §§pop();
                     §§pop().§3!W§ = _loc1_;
                     if(!_loc3_)
                     {
                        this.§4x§ = _loc1_ = true;
                        this.§>o§ = _loc1_;
                        if(!_loc2_)
                        {
                        }
                        §§goto(addr142);
                     }
                  }
               }
            }
            this.§,i§ = -1;
         }
         addr142:
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.removeEventListeners();
         }
      }
      
      public function §"!J§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§&!c§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§&!c§);
                     addr72:
                     while(true)
                     {
                        §§pop().removeChild(this);
                        addr74:
                        while(true)
                        {
                        }
                     }
                     addr47:
                     if(_loc3_ && this)
                     {
                        continue;
                     }
                     §§goto(addr19);
                  }
               }
               loop1:
               for(; param1; §§goto(addr74))
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     while(true)
                     {
                        this.dispose();
                     }
                     addr43:
                  }
                  while(true)
                  {
                     if(_loc3_)
                     {
                        continue loop1;
                     }
                     §§goto(addr47);
                  }
               }
               addr19:
               return;
            }
            §§goto(addr72);
         }
         §§goto(addr43);
      }
      
      public function §?z§(param1:DisplayObject, param2:Matrix = null) : Matrix
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(param2)
            {
               if(_loc5_)
               {
                  param2.identity();
                  if(_loc5_ || _loc3_)
                  {
                     addr36:
                     if(param1 == this)
                     {
                        if(_loc5_)
                        {
                           return param2;
                        }
                     }
                     else
                     {
                        §§push(param1 == this.§&!c§);
                        loop57:
                        while(true)
                        {
                           §§push(§§pop());
                           addr400:
                           loop28:
                           while(!§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr402:
                                 while(true)
                                 {
                                    §§push(param1 == null);
                                    addr384:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       addr385:
                                       while(§§pop())
                                       {
                                          while(true)
                                          {
                                             if(_loc5_ || this)
                                             {
                                                §§pop();
                                                §§push(this.§&!c§ == null);
                                                break loop28;
                                             }
                                             continue loop57;
                                          }
                                       }
                                       break loop28;
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              loop1:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       §§push(this.§4!=§);
                                       loop3:
                                       while(true)
                                       {
                                          §§push(0);
                                          loop4:
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             while(true)
                                             {
                                                §§push(!§§pop());
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop7:
                                                   while(_loc5_ || _loc3_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop8:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr379:
                                                            while(true)
                                                            {
                                                               §§push(this.§>!D§);
                                                               addr336:
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  addr337:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     continue loop8;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         loop14:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  param2.translate(-this.§4!=§,-this.§>!D§);
                                                                  addr356:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                               addr348:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this.§3!W§);
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§push(1);
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     if(!(_loc6_ && _loc3_))
                                                                     {
                                                                        §§push(!§§pop());
                                                                        loop20:
                                                                        while(!_loc6_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           loop21:
                                                                           while(!_loc6_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop22:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc6_ && _loc3_))
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                param2.scale(this.§3!W§,this.§8N§);
                                                                                                addr299:
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             addr293:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr348);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr356);
                                                                                       addr286:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§!!&§);
                                                                                       loop45:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(0);
                                                                                          loop44:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                if(§§pop() != §§pop())
                                                                                                {
                                                                                                   loop37:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      param2.rotate(this.§!!&§);
                                                                                                      addr248:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop37;
                                                                                                      }
                                                                                                   }
                                                                                                   addr244:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§7F§);
                                                                                                   loop46:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            continue loop18;
                                                                                                         }
                                                                                                         §§push(0);
                                                                                                         loop43:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               continue loop44;
                                                                                                            }
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               continue loop4;
                                                                                                            }
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                            if(_loc5_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(!§§pop());
                                                                                                               if(_loc5_ || _loc3_)
                                                                                                               {
                                                                                                                  if(!(_loc6_ && this))
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        continue loop21;
                                                                                                                     }
                                                                                                                     if(_loc5_ || param1)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 continue loop20;
                                                                                                                              }
                                                                                                                              §§pop();
                                                                                                                              if(_loc5_ || param1)
                                                                                                                              {
                                                                                                                                 if(_loc5_ || this)
                                                                                                                                 {
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr356);
                                                                                                                                 }
                                                                                                                                 loop26:
                                                                                                                                 while(_loc5_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§8N§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          if(_loc6_ && _loc3_)
                                                                                                                                          {
                                                                                                                                             continue loop3;
                                                                                                                                          }
                                                                                                                                          §§push(1);
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             continue loop19;
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() == §§pop());
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                continue loop14;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                continue loop26;
                                                                                                                                             }
                                                                                                                                             continue loop26;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr336);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop14;
                                                                                                                                 }
                                                                                                                                 continue loop2;
                                                                                                                              }
                                                                                                                              §§goto(addr286);
                                                                                                                              §§goto(addr356);
                                                                                                                           }
                                                                                                                           addr236:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§6_§);
                                                                                                                              if(_loc6_ && param2)
                                                                                                                              {
                                                                                                                                 continue loop46;
                                                                                                                              }
                                                                                                                              if(_loc6_ && param2)
                                                                                                                              {
                                                                                                                                 continue loop45;
                                                                                                                              }
                                                                                                                              §§push(0);
                                                                                                                              if(!(_loc5_ || param2))
                                                                                                                              {
                                                                                                                                 continue loop43;
                                                                                                                              }
                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                              if(_loc5_ || param1)
                                                                                                                              {
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       continue loop6;
                                                                                                                                    }
                                                                                                                                    if(_loc6_ && param1)
                                                                                                                                    {
                                                                                                                                       continue loop1;
                                                                                                                                    }
                                                                                                                                    §§push(!§§pop());
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          continue loop22;
                                                                                                                                       }
                                                                                                                                       continue loop6;
                                                                                                                                    }
                                                                                                                                    addr275:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              if(_loc5_ || this)
                                                                                                                              {
                                                                                                                                 if(_loc5_ || this)
                                                                                                                                 {
                                                                                                                                    if(_loc5_ || this)
                                                                                                                                    {
                                                                                                                                       while(§§pop())
                                                                                                                                       {
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                if(_loc5_ || this)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc6_ && param2))
                                                                                                                                                   {
                                                                                                                                                      param2.translate(this.§7F§,this.§6_§);
                                                                                                                                                      if(_loc6_)
                                                                                                                                                      {
                                                                                                                                                         break loop1;
                                                                                                                                                      }
                                                                                                                                                      if(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc5_)
                                                                                                                                                         {
                                                                                                                                                            addr170:
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr299);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr244);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr402);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr379);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr248);
                                                                                                                                          }
                                                                                                                                          break loop1;
                                                                                                                                       }
                                                                                                                                       return param2;
                                                                                                                                       addr138:
                                                                                                                                    }
                                                                                                                                    §§goto(addr386);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr265);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr217);
                                                                                                                              }
                                                                                                                              §§goto(addr299);
                                                                                                                              §§goto(addr236);
                                                                                                                           }
                                                                                                                           addr217:
                                                                                                                           addr72:
                                                                                                                        }
                                                                                                                        §§goto(addr138);
                                                                                                                     }
                                                                                                                     §§goto(addr385);
                                                                                                                  }
                                                                                                                  §§goto(addr384);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr236);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr252);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr337);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr329);
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                        §§goto(addr338);
                                                                     }
                                                                     §§goto(addr329);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr400);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr404:
                                    if(param1 == null)
                                    {
                                       break;
                                    }
                                    if(param1.§&!c§ == this)
                                    {
                                       if(!_loc6_)
                                       {
                                          param1.§?z§(this,param2);
                                          if(_loc5_)
                                          {
                                             param2.invert();
                                             addr443:
                                          }
                                          else
                                          {
                                             loop48:
                                             while(true)
                                             {
                                                addr445:
                                                while(true)
                                                {
                                                   §&-§.length = 0;
                                                   if(!_loc5_)
                                                   {
                                                      continue loop48;
                                                   }
                                                   if(false)
                                                   {
                                                      break;
                                                   }
                                                   var _loc3_:DisplayObject = null;
                                                   var _loc4_:DisplayObject = this;
                                                   if(!_loc6_)
                                                   {
                                                      loop50:
                                                      while(_loc4_)
                                                      {
                                                         §&-§.push(_loc4_);
                                                         if(_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            _loc4_ = _loc4_.parent;
                                                            continue loop50;
                                                         }
                                                      }
                                                      _loc4_ = param1;
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(Boolean(_loc4_));
                                                            if(_loc5_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc6_ && param2))
                                                                  {
                                                                     addr516:
                                                                     §§pop();
                                                                     if(!(_loc6_ && param1))
                                                                     {
                                                                        §§push(§&-§.indexOf(_loc4_) == -1);
                                                                     }
                                                                     break;
                                                                  }
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     if(_loc4_ == null)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                     }
                                                                     _loc3_ = _loc4_;
                                                                     _loc4_ = this;
                                                                     if(!(_loc6_ && param2))
                                                                     {
                                                                        loop52:
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_ == _loc3_)
                                                                           {
                                                                              if(_loc5_ || param1)
                                                                              {
                                                                                 break;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              _loc4_.§?z§(_loc4_.§&!c§,§&!T§);
                                                                              if(!(_loc5_ || this))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 param2.concat(§&!T§);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop52;
                                                                              }
                                                                           }
                                                                           addr589:
                                                                           _loc4_ = param1;
                                                                           if(!_loc6_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_ == _loc3_)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    addr641:
                                                                                    param2.concat(§8Y§);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    _loc4_.§?z§(_loc4_.§&!c§,§&!T§);
                                                                                    if(!(_loc5_ || this))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §8Y§.concat(§&!T§);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr644);
                                                                              }
                                                                              §8Y§.invert();
                                                                              if(!(_loc6_ && param2))
                                                                              {
                                                                                 §§goto(addr641);
                                                                              }
                                                                              addr644:
                                                                              return param2;
                                                                              addr617:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc4_ = _loc4_.parent;
                                                                              §§goto(addr617);
                                                                           }
                                                                        }
                                                                        §8Y§.identity();
                                                                        §§goto(addr589);
                                                                     }
                                                                     §§goto(addr568);
                                                                  }
                                                                  break;
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr516);
                                                         }
                                                      }
                                                      throw new ArgumentError("Object not connected to target");
                                                   }
                                                   §§goto(addr481);
                                                }
                                                §§goto(addr452);
                                             }
                                          }
                                          addr452:
                                          return param2;
                                       }
                                       §§goto(addr443);
                                    }
                                    §§goto(addr445);
                                 }
                              }
                              §§goto(addr407);
                           }
                        }
                     }
                     §§goto(addr170);
                  }
                  addr407:
                  _loc4_ = this;
                  while(_loc4_)
                  {
                     _loc4_.§?z§(_loc4_.§&!c§,§&!T§);
                     if(_loc6_)
                     {
                        break;
                     }
                     param2.concat(§&!T§);
                     _loc4_ = _loc4_.parent;
                  }
                  return param2;
               }
               if(false)
               {
                  §§goto(addr72);
               }
               §§goto(addr404);
            }
            else
            {
               param2 = new Matrix();
            }
            §§goto(addr36);
         }
         §§goto(addr293);
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §#=§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               while(true)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(this.§>o§);
                              if(_loc4_ || this)
                              {
                                 continue loop0;
                              }
                              loop6:
                              while(true)
                              {
                                 §§pop();
                                 loop7:
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop4;
                                    }
                                    §§push(this.§4x§);
                                    if(!(_loc3_ && param1))
                                    {
                                       continue loop6;
                                    }
                                    addr102:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             return null;
                                          }
                                          else
                                          {
                                             loop11:
                                             while(true)
                                             {
                                                addr32:
                                                while(this.getBounds(this,§8_§).containsPoint(param1))
                                                {
                                                   if(!(_loc4_ || _loc3_))
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      if(!(_loc3_ && param2))
                                                      {
                                                         break loop7;
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop11;
                                                }
                                                §§push(null);
                                                if(_loc4_ || param2)
                                                {
                                                   return §§pop();
                                                }
                                             }
                                             addr112:
                                          }
                                          return §§pop();
                                       }
                                       §§goto(addr32);
                                    }
                                 }
                                 return this;
                              }
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr101);
                  }
               }
            }
         }
         §§goto(addr112);
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §8Y§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§?z§(_loc2_.§&!c§,§&!T§);
            if(!_loc4_)
            {
               break;
            }
            §8Y§.concat(§&!T§);
            if(!(_loc4_ || _loc2_))
            {
               break;
            }
            _loc2_ = _loc2_.parent;
         }
         return §8Y§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §8Y§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(true)
         {
            if(!_loc2_)
            {
               if(!_loc4_)
               {
                  §8Y§.invert();
                  break;
               }
               break;
            }
            _loc2_.§?z§(_loc2_.§&!c§,§&!T§);
            if(!_loc4_)
            {
               §8Y§.concat(§&!T§);
               if(!(_loc3_ || _loc3_))
               {
                  break;
               }
            }
            _loc2_ = _loc2_.parent;
         }
         return §8Y§.transformPoint(param1);
      }
      
      public function render(param1:§2^§, param2:Number) : void
      {
         throw new §#=§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TouchEvent = null;
         if(_loc4_ || _loc3_)
         {
            if(param1 is TouchEvent)
            {
               if(_loc4_)
               {
                  _loc2_ = param1 as TouchEvent;
                  if(!(_loc3_ && _loc2_))
                  {
                     if(_loc2_.timestamp == this.§,i§)
                     {
                        if(_loc4_ || _loc2_)
                        {
                           return;
                        }
                     }
                     else
                     {
                        this.§,i§ = _loc2_.timestamp;
                     }
                  }
               }
               §§goto(addr92);
            }
            super.dispatchEvent(param1);
         }
         addr92:
      }
      
      function § !1§(param1:DisplayObjectContainer) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(true)
         {
            §§push(_loc2_ == this);
            if(!(_loc7_ && this))
            {
               §§push(!§§pop());
               if(_loc8_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc7_)
                     {
                        addr54:
                        §§pop();
                        if(_loc8_)
                        {
                           §§push(_loc2_ == null);
                           if(_loc8_)
                           {
                              addr63:
                              if(!§§pop())
                              {
                                 continue;
                              }
                              if(!_loc7_)
                              {
                                 if(_loc2_ == this)
                                 {
                                    if(!(_loc7_ && param1))
                                    {
                                       break;
                                    }
                                 }
                              }
                              _loc3_ = §]!T§();
                              if(_loc8_)
                              {
                                 §§push(param1 == this.§&!c§);
                                 if(_loc8_)
                                 {
                                    §§push(!§§pop());
                                    if(!_loc7_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          §§push(§§pop());
                                          if(_loc8_ || _loc2_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   §§pop();
                                                   if(!_loc7_)
                                                   {
                                                      §§push(this.§&!c§);
                                                      if(!_loc7_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc8_ || param1)
                                                         {
                                                            addr138:
                                                            §§push(§§pop());
                                                            if(!_loc7_)
                                                            {
                                                               addr141:
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     addr144:
                                                                     §§pop();
                                                                     if(_loc8_)
                                                                     {
                                                                        §§push(_loc3_.length > 0);
                                                                        if(_loc8_)
                                                                        {
                                                                           addr163:
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc7_ && param1))
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc8_ || param1)
                                                                                 {
                                                                                    var _loc5_:* = §§pop();
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       var _loc6_:* = _loc3_;
                                                                                       if(_loc8_ || param1)
                                                                                       {
                                                                                          loop2:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§hasnext(_loc6_,_loc5_));
                                                                                             if(!(_loc7_ && _loc3_))
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   if(_loc8_ || _loc2_)
                                                                                                   {
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         addr229:
                                                                                                         if(!(_loc7_ && _loc3_))
                                                                                                         {
                                                                                                            addr237:
                                                                                                            this.§&!c§ = param1;
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               addr244:
                                                                                                               §§push(Boolean(this.§&!c§));
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  addr247:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!(_loc7_ && this))
                                                                                                                     {
                                                                                                                        addr256:
                                                                                                                        §§pop();
                                                                                                                        if(_loc8_ || this)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        _loc5_ = 0;
                                                                                                                        addr271:
                                                                                                                        if(!(_loc7_ && _loc2_))
                                                                                                                        {
                                                                                                                           _loc6_ = _loc3_;
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§hasnext(_loc6_,_loc5_));
                                                                                                                              break loop2;
                                                                                                                           }
                                                                                                                           addr312:
                                                                                                                           return;
                                                                                                                           addr311:
                                                                                                                           addr310:
                                                                                                                           addr308:
                                                                                                                        }
                                                                                                                        §§goto(addr311);
                                                                                                                     }
                                                                                                                     addr268:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           §§goto(addr271);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr312);
                                                                                                                  }
                                                                                                                  §§goto(addr268);
                                                                                                               }
                                                                                                               §§goto(addr256);
                                                                                                            }
                                                                                                            §§goto(addr268);
                                                                                                            §§push(_loc3_.length > 0);
                                                                                                         }
                                                                                                         §§goto(addr256);
                                                                                                      }
                                                                                                      §§goto(addr312);
                                                                                                   }
                                                                                                   §§goto(addr310);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                                                   if(!(_loc8_ || param1))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.removeEventListeningObject(this,_loc4_);
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   this.addEventListeningObject(this,_loc4_);
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr312);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr206);
                                                                                    }
                                                                                    §§goto(addr229);
                                                                                 }
                                                                                 §§goto(addr256);
                                                                              }
                                                                           }
                                                                           §§goto(addr237);
                                                                        }
                                                                        §§goto(addr247);
                                                                     }
                                                                     §§goto(addr237);
                                                                  }
                                                                  §§goto(addr256);
                                                               }
                                                               §§goto(addr163);
                                                            }
                                                            §§goto(addr247);
                                                         }
                                                         §§goto(addr144);
                                                      }
                                                      §§goto(addr244);
                                                   }
                                                   §§goto(addr256);
                                                }
                                             }
                                             §§goto(addr138);
                                          }
                                          §§goto(addr141);
                                       }
                                       §§goto(addr144);
                                    }
                                    §§goto(addr268);
                                 }
                                 §§goto(addr256);
                              }
                              §§goto(addr237);
                           }
                           §§goto(addr63);
                        }
                        break;
                     }
                  }
                  §§goto(addr63);
               }
            }
            §§goto(addr54);
         }
         throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§&!c§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr52:
                     this.§&!c§.removeEventListeningObject(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr52);
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(this.§&!c§);
            if(!(_loc4_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc4_ && this))
                  {
                     addr62:
                     this.§&!c§.addEventListeningObject(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr62);
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.dispatchEvent(param1);
         }
      }
      
      public function get §,1§() : Matrix
      {
         return this.§?z§(this.§&!c§);
      }
      
      public function get §-j§() : Rectangle
      {
         return this.getBounds(this.§&!c§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§&!c§,§8_§).width;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            this.§3!W§ = 1;
         }
         §§push(this.width);
         if(!(_loc4_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            if(_loc2_ == 0)
            {
               this.scaleX = 1;
               if(_loc4_)
               {
                  addr90:
               }
               return;
            }
            if(_loc3_ || _loc2_)
            {
               addr83:
               §§push(this);
               §§push(param1);
               if(_loc3_)
               {
                  §§push(§§pop() / _loc2_);
               }
               §§pop().scaleX = §§pop();
            }
            §§goto(addr90);
         }
         §§goto(addr83);
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.§&!c§,§8_§).height;
      }
      
      public function set height(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§8N§ = 1;
         }
         §§push(this.height);
         if(!(_loc4_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            if(_loc2_ == 0)
            {
               this.scaleY = 1;
               if(_loc3_)
               {
                  if(!_loc3_)
                  {
                     addr73:
                     §§push(this);
                     §§push(param1);
                     if(!(_loc4_ && this))
                     {
                        §§push(§§pop() / _loc2_);
                     }
                     §§pop().scaleY = §§pop();
                     addr95:
                  }
                  else
                  {
                     addr69:
                  }
                  return;
               }
               §§goto(addr95);
            }
            §§goto(addr73);
         }
         §§goto(addr69);
      }
      
      public function get root() : DisplayObject
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:DisplayObject = this;
         loop0:
         while(true)
         {
            §§push(_loc1_.parent);
            while(§§pop())
            {
               §§push(_loc1_.parent);
               if(_loc3_)
               {
                  continue loop0;
               }
            }
            return _loc1_;
         }
      }
      
      override public function addEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super.addEventListener(param1,param2);
         }
         do
         {
            this.addEventListeningObject(this,param1);
         }
         while(!(_loc3_ || param1));
         
      }
      
      override public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super.removeEventListener(param1,param2);
            while(!hasEventListener(param1))
            {
               if(!(_loc4_ || param1))
               {
                  break;
               }
               addr72:
               if(!(_loc4_ || param2))
               {
                  continue;
               }
               this.removeEventListeningObject(this,param1);
               addr58:
               §§goto(addr72);
            }
            return;
         }
         §§goto(addr58);
      }
      
      override public function removeEventListeners(param1:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:Array = §]!T§();
         if(_loc7_)
         {
            super.removeEventListeners(param1);
            if(!_loc6_)
            {
               §§goto(addr31);
            }
            §§goto(addr44);
         }
         addr31:
         if(param1 == null)
         {
            addr44:
            for each(_loc3_ in _loc2_)
            {
               if(_loc7_)
               {
                  this.removeEventListeningObject(this,_loc3_);
               }
            }
            if(_loc6_)
            {
            }
         }
         else
         {
            this.removeEventListeningObject(this,param1);
         }
      }
      
      public function §`P§(param1:Matrix3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§!!&§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(this.§3!W§);
                                 while(true)
                                 {
                                    §§push(1);
                                    addr466:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    addr42:
                                    if(!(_loc2_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    §§push(0);
                                    if(!_loc3_)
                                    {
                                       if(!(_loc3_ && param1))
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc2_)
                                          {
                                             addr62:
                                             if(_loc2_ || this)
                                             {
                                                if(!_loc3_)
                                                {
                                                   addr71:
                                                   if(_loc2_ || this)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         addr81:
                                                         §§push(!§§pop());
                                                         if(_loc2_)
                                                         {
                                                            if(_loc2_ || param1)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     loop56:
                                                                     while(§§pop())
                                                                     {
                                                                        addr96:
                                                                        if(_loc2_ || _loc2_)
                                                                        {
                                                                           param1.prependTranslation(this.§4!=§,this.§>!D§,0);
                                                                        }
                                                                        if(_loc2_)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr114:
                                                                              if(_loc2_ || param1)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    loop12:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§8N§);
                                                                                       loop13:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(1);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() == §§pop());
                                                                                             loop15:
                                                                                             while(true)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      §§push(this.§7F§);
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   §§push(this.§7F§);
                                                                                                   loop62:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§4!=§);
                                                                                                      addr450:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         loop64:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            addr452:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     addr459:
                                                                                                                     addr458:
                                                                                                                     §§push(!§§pop());
                                                                                                                     if(!!§§pop())
                                                                                                                     {
                                                                                                                        addr460:
                                                                                                                        §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§6_§);
                                                                                                                           addr406:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc2_ || this))
                                                                                                                              {
                                                                                                                                 continue loop64;
                                                                                                                              }
                                                                                                                              if(!_loc2_)
                                                                                                                              {
                                                                                                                                 continue loop62;
                                                                                                                              }
                                                                                                                              §§push(this.§>!D§);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 addr418:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    addr419:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          addr422:
                                                                                                                                          §§push(§§pop() != §§pop());
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       continue loop15;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr460);
                                                                                                                        }
                                                                                                                        addr461:
                                                                                                                     }
                                                                                                                     addr424:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        addr425:
                                                                                                                        param1.prependTranslation(this.§7F§ + this.§4!=§,this.§6_§ + this.§>!D§,0);
                                                                                                                     }
                                                                                                                     break loop56;
                                                                                                                     addr423:
                                                                                                                  }
                                                                                                                  continue loop4;
                                                                                                               }
                                                                                                               §§goto(addr460);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   loop20:
                                                                                                   while(_loc2_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      loop21:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               loop23:
                                                                                                               while(!_loc3_)
                                                                                                               {
                                                                                                                  §§push(this.§6_§);
                                                                                                                  loop24:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     loop25:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                        loop26:
                                                                                                                        while(!(_loc3_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(!§§pop());
                                                                                                                           loop27:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc2_)
                                                                                                                              {
                                                                                                                                 continue loop20;
                                                                                                                              }
                                                                                                                              addr356:
                                                                                                                              if(!(_loc3_ && _loc3_))
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       while(_loc2_)
                                                                                                                                       {
                                                                                                                                          param1.prependTranslation(this.§7F§,this.§6_§,0);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr114);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr461);
                                                                                                                                       addr365:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§!!&§);
                                                                                                                                       continue loop24;
                                                                                                                                       §§goto(addr374);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr363:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    break loop27;
                                                                                                                                    §§goto(addr356);
                                                                                                                                 }
                                                                                                                                 addr472:
                                                                                                                              }
                                                                                                                              addr163:
                                                                                                                              if(!(_loc2_ || _loc2_))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              §§push(!§§pop());
                                                                                                                              loop53:
                                                                                                                              while(_loc2_ || this)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       continue loop56;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc2_)
                                                                                                                                       {
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             loop55:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc2_ || this)
                                                                                                                                                {
                                                                                                                                                   if(_loc2_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc3_)
                                                                                                                                                      {
                                                                                                                                                         continue loop23;
                                                                                                                                                      }
                                                                                                                                                      §§push(this.§>!D§);
                                                                                                                                                      if(_loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc3_)
                                                                                                                                                         {
                                                                                                                                                            continue loop13;
                                                                                                                                                         }
                                                                                                                                                         if(!(_loc2_ || _loc2_))
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr42);
                                                                                                                                                      }
                                                                                                                                                      loop50:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc2_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            addr136:
                                                                                                                                                            if(_loc2_ || param1)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                                  addr146:
                                                                                                                                                               }
                                                                                                                                                               §§push(0);
                                                                                                                                                               loop51:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc3_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        addr156:
                                                                                                                                                                        break;
                                                                                                                                                                        addr218:
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                                                                     while(_loc2_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr163);
                                                                                                                                                                        §§goto(addr71);
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(!§§pop());
                                                                                                                                                                              break loop53;
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        addr268:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           addr269:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop21;
                                                                                                                                                                              }
                                                                                                                                                                              if(!(_loc2_ || this))
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc3_ && param1)
                                                                                                                                                                              {
                                                                                                                                                                                 addr469:
                                                                                                                                                                                 while(!_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop15;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr472);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop3;
                                                                                                                                                                                 addr469:
                                                                                                                                                                              }
                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 while(!(_loc3_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop26;
                                                                                                                                                                                 addr286:
                                                                                                                                                                              }
                                                                                                                                                                              addr230:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          param1.prependScale(this.§3!W§,this.§8N§,1);
                                                                                                                                                                                          addr253:
                                                                                                                                                                                          while(!_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop55;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr425);
                                                                                                                                                                                          addr253:
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§8N§);
                                                                                                                                                                                             continue loop13;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr294:
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr253);
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop50;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr294);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr459);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr156);
                                                                                                                                                                     }
                                                                                                                                                                     addr156:
                                                                                                                                                                     continue loop2;
                                                                                                                                                                  }
                                                                                                                                                                  addr308:
                                                                                                                                                                  while(_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     addr310:
                                                                                                                                                                     if(!(_loc3_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() != §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 param1.prependRotation(this.§!!&§ / Math.PI * 180,Vector3D.Z_AXIS);
                                                                                                                                                                                 addr331:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc3_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§3!W§);
                                                                                                                                                                                             addr259:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(1);
                                                                                                                                                                                                addr260:
                                                                                                                                                                                                while(!_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() == §§pop());
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr268);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr267:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr466);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr469);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr452);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr419);
                                                                                                                                                                                                continue loop50;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr256:
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr446);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr452);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr365);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr374);
                                                                                                                                                                              }
                                                                                                                                                                              addr320:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr256);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr417);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                                                                           addr389:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop20;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr310);
                                                                                                                                                                        }
                                                                                                                                                                        addr388:
                                                                                                                                                                     }
                                                                                                                                                                     continue loop51;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop25;
                                                                                                                                                                  §§goto(addr423);
                                                                                                                                                               }
                                                                                                                                                               continue loop1;
                                                                                                                                                            }
                                                                                                                                                            continue loop24;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr259);
                                                                                                                                                      }
                                                                                                                                                      addr198:
                                                                                                                                                      §§goto(addr406);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr331);
                                                                                                                                                }
                                                                                                                                                §§goto(addr253);
                                                                                                                                             }
                                                                                                                                             continue loop0;
                                                                                                                                             addr187:
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr469);
                                                                                                                                          }
                                                                                                                                          addr468:
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                       §§goto(addr62);
                                                                                                                                    }
                                                                                                                                    §§goto(addr424);
                                                                                                                                 }
                                                                                                                                 §§goto(addr269);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc2_ || param1)
                                                                                                                                 {
                                                                                                                                    §§goto(addr230);
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                                 §§goto(addr171);
                                                                                                                              }
                                                                                                                              addr171:
                                                                                                                              §§goto(addr460);
                                                                                                                           }
                                                                                                                           continue loop12;
                                                                                                                        }
                                                                                                                        §§goto(addr458);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            addr399:
                                                                                                         }
                                                                                                         §§goto(addr363);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr425);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr374);
                                                                              }
                                                                           }
                                                                           §§goto(addr320);
                                                                        }
                                                                        §§goto(addr187);
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr422);
                                                               }
                                                               §§goto(addr389);
                                                            }
                                                            §§goto(addr399);
                                                         }
                                                         §§goto(addr267);
                                                      }
                                                      §§goto(addr286);
                                                   }
                                                   §§goto(addr156);
                                                }
                                                §§goto(addr171);
                                             }
                                             §§goto(addr182);
                                          }
                                          §§goto(addr81);
                                       }
                                       §§goto(addr450);
                                    }
                                    §§goto(addr146);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr468);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr460);
      }
      
      public function get x() : Number
      {
         return this.§7F§;
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§7F§ = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.§6_§;
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§6_§ = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.§^!d§;
      }
      
      public function set z(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(!this.§&!c§)
            {
               if(_loc2_)
               {
                  addr48:
                  this.§^!d§ = param1;
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function get pivotX() : Number
      {
         return this.§4!=§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§4!=§ = param1;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§>!D§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§>!D§ = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§3!W§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§3!W§ = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§8N§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§8N§ = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§!!&§;
      }
      
      public function set rotation(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         if(_loc4_)
         {
            §§push(param1);
            while(true)
            {
               if(§§pop() > Math.PI)
               {
                  while(true)
                  {
                     §§push(Number(Math.ceil(param1 / (Math.PI * 2))));
                     loop2:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr197:
                        while(true)
                        {
                           §§push(param1);
                           continue loop2;
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(param1);
                  loop4:
                  while(true)
                  {
                     §§push(-Math.PI);
                     loop5:
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           if(_loc4_ || _loc3_)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(Number(Math.ceil(-param1 / (Math.PI * 2))));
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                 }
                                 addr129:
                              }
                              §§goto(addr197);
                           }
                           while(_loc4_ || this)
                           {
                              §§push(param1);
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(!_loc3_)
                                 {
                                    §§push(_loc2_);
                                    if(_loc4_ || _loc2_)
                                    {
                                       §§push(Math.PI * 2);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr71:
                                          §§push(§§pop() * §§pop());
                                          if(_loc3_)
                                          {
                                             continue loop5;
                                          }
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!_loc3_)
                                             {
                                                addr78:
                                                if(_loc3_)
                                                {
                                                   continue loop4;
                                                }
                                                if(!_loc3_)
                                                {
                                                   addr83:
                                                   §§push(Number(§§pop()));
                                                   if(!_loc3_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         param1 = §§pop();
                                                         while(true)
                                                         {
                                                            §§goto(addr26);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr161);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr129);
                                                   }
                                                }
                                                §§goto(addr140);
                                             }
                                             §§goto(addr83);
                                          }
                                          §§goto(addr160);
                                       }
                                       §§goto(addr159);
                                    }
                                    §§goto(addr71);
                                 }
                                 §§goto(addr164);
                              }
                              §§goto(addr78);
                           }
                           §§goto(addr165);
                        }
                        addr26:
                        while(true)
                        {
                           this.§!!&§ = param1;
                           if(_loc4_)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 break;
                              }
                              continue loop7;
                           }
                           continue loop8;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr197);
      }
      
      public function get alpha() : Number
      {
         return this.mAlpha;
      }
      
      public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this);
            if(_loc3_)
            {
               §§push(param1);
               if(!_loc2_)
               {
                  §§push(§§pop() < 0);
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && param1))
                        {
                           §§push(0);
                           if(!_loc2_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc2_ && this)
                              {
                                 addr67:
                                 if(§§pop() > 1)
                                 {
                                    addr70:
                                    §§push(Number(1));
                                    if(_loc2_ && param1)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§push(param1);
                                    if(_loc3_ || this)
                                    {
                                       addr98:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                              }
                              §§pop().mAlpha = §§pop();
                              §§goto(addr100);
                           }
                           §§goto(addr67);
                        }
                        §§goto(addr70);
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc3_)
                        {
                           §§goto(addr67);
                        }
                     }
                     §§goto(addr98);
                  }
               }
               §§goto(addr67);
            }
            §§goto(addr70);
         }
         addr100:
      }
      
      public function get visible() : Boolean
      {
         return this.§>o§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>o§ = param1;
         }
      }
      
      public function get §;o§() : Boolean
      {
         return this.§4x§;
      }
      
      public function set §;o§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§4x§ = param1;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.mName = param1;
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§&!c§;
      }
      
      public function get stage() : Stage
      {
         return this.root as Stage;
      }
      
      public function set color(param1:uint) : void
      {
      }
   }
}
