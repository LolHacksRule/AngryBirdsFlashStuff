package §'!9§
{
   import § !'§.§0!K§;
   import § !'§.§[!$§;
   import §<&§.§`K§;
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
      
      private static var §?^§:Vector.<DisplayObject>;
      
      private static var §<!E§:Rectangle;
      
      private static var §5g§:Matrix;
      
      private static var §"!G§:Matrix;
      
      protected static var §^5§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §?^§ = new Vector.<DisplayObject>(0);
         }
         loop0:
         while(true)
         {
            §<!E§ = new Rectangle();
            do
            {
               §5g§ = new Matrix();
               continue loop0;
            }
            while(!(_loc2_ || _loc2_));
            
            return;
         }
      }
      
      private var §,G§:Number;
      
      private var §78§:Number;
      
      private var §&5§:Number;
      
      private var §1!O§:Number;
      
      private var §2!F§:Number;
      
      private var §93§:Number;
      
      private var §-!n§:Number;
      
      private var §%I§:Number;
      
      private var §>L§:Boolean;
      
      private var §%!N§:Boolean;
      
      private var mName:String;
      
      private var §2!&§:Number;
      
      private var §3^§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            if(!_loc3_)
            {
               if(getQualifiedClassName(this) == "starling.display::DisplayObject")
               {
                  if(!_loc3_)
                  {
                     §§goto(addr29);
                  }
               }
               §§push(this);
               §§push(this);
               §§push(this);
               §§push(this);
               §§push(this.§-!n§ = 0);
               if(_loc2_)
               {
                  var _loc1_:*;
                  §§push(_loc1_ = §§pop());
               }
               §§pop().§1!O§ = §§pop();
               §§push(_loc1_);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(_loc1_ = §§pop());
               }
               §§pop().§&5§ = §§pop();
               §§push(_loc1_);
               if(_loc2_)
               {
                  §§push(_loc1_ = §§pop());
               }
               §§pop().§78§ = §§pop();
               §§pop().§,G§ = _loc1_;
               if(_loc2_ || _loc2_)
               {
                  addr89:
                  §§push(this);
                  §§push(this);
                  §§push(this.§%I§ = 1);
                  if(!(_loc3_ && this))
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§93§ = §§pop();
                  §§pop().§2!F§ = _loc1_;
                  if(_loc2_)
                  {
                     §§goto(addr123);
                  }
                  §§goto(addr139);
               }
               addr123:
               this.§>L§ = this.§%!N§ = true;
               if(_loc2_ || _loc2_)
               {
                  addr139:
                  this.§2!&§ = -1;
               }
               return;
            }
            addr29:
            throw new §[!$§();
         }
         §§goto(addr89);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.removeEventListeners();
         }
      }
      
      public function §'s§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§3^§);
            if(_loc3_ || _loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§3^§);
                     addr78:
                     while(true)
                     {
                        §§pop().removeChild(this);
                        addr80:
                        while(true)
                        {
                        }
                     }
                     addr56:
                     if(!(_loc3_ || this))
                     {
                        continue;
                     }
                     this.dispose();
                     addr20:
                     return;
                     addr65:
                  }
               }
               for(; param1; §§goto(addr80))
               {
                  if(_loc3_)
                  {
                     if(_loc2_ && _loc3_)
                     {
                        continue;
                     }
                     §§goto(addr56);
                  }
                  §§goto(addr65);
               }
               §§goto(addr20);
            }
            §§goto(addr78);
         }
         §§goto(addr80);
      }
      
      public function §^2§(param1:DisplayObject, param2:Matrix = null) : Matrix
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(param2)
            {
               if(_loc6_ || _loc3_)
               {
                  param2.identity();
                  if(!(_loc5_ && param2))
                  {
                     addr42:
                     if(param1 == this)
                     {
                        if(_loc6_)
                        {
                           return param2;
                        }
                        loop41:
                        while(true)
                        {
                           param2.rotate(this.§-!n§);
                           if(!_loc5_)
                           {
                              loop42:
                              while(true)
                              {
                                 §§push(this.§,G§);
                                 loop35:
                                 while(true)
                                 {
                                    §§push(0);
                                    addr171:
                                    while(!(_loc5_ && param1))
                                    {
                                       §§push(§§pop() == §§pop());
                                       loop37:
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                          if(_loc6_ || param2)
                                          {
                                             if(_loc6_)
                                             {
                                                addr189:
                                                §§push(§§pop());
                                                if(_loc6_ || param2)
                                                {
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         addr206:
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               loop39:
                                                               while(true)
                                                               {
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        §§pop();
                                                                        continue loop35;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr395:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§1!O§);
                                                                           break loop39;
                                                                        }
                                                                     }
                                                                     addr394:
                                                                  }
                                                                  loop26:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     loop27:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§93§);
                                                                        loop28:
                                                                        while(true)
                                                                        {
                                                                           §§push(1);
                                                                           if(!(_loc5_ && _loc3_))
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              if(!_loc5_)
                                                                              {
                                                                                 addr265:
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       loop29:
                                                                                       while(!_loc5_)
                                                                                       {
                                                                                          addr277:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   param2.scale(this.§2!F§,this.§93§);
                                                                                                   if(!(_loc6_ || param1))
                                                                                                   {
                                                                                                      §§goto(addr423);
                                                                                                   }
                                                                                                   if(!(_loc6_ || param2))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   addr152:
                                                                                                   if(!(_loc6_ || param1))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   addr159:
                                                                                                   if(_loc6_ || _loc3_)
                                                                                                   {
                                                                                                      §§goto(addr52);
                                                                                                   }
                                                                                                   loop4:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§3^§ == null);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            loop7:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§&5§);
                                                                                                                     addr389:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        addr390:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                           break loop29;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr348:
                                                                                                                     if(!(_loc6_ || param2))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     param2.translate(-this.§&5§,-this.§1!O§);
                                                                                                                     if(!(_loc5_ && param1))
                                                                                                                     {
                                                                                                                        addr418:
                                                                                                                        if(!(_loc5_ && param2))
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr300:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§2!F§);
                                                                                                                                 addr303:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(1);
                                                                                                                                    addr304:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() == §§pop());
                                                                                                                                       break loop37;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr377:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(param1 == null);
                                                                                                                           addr400:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              addr401:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    continue loop7;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc6_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       continue loop4;
                                                                                                                                    }
                                                                                                                                    addr415:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       break loop28;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr418:
                                                                                                                     }
                                                                                                                     §§goto(addr395);
                                                                                                                  }
                                                                                                                  addr387:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  if(param1 != null)
                                                                                                                  {
                                                                                                                     if(param1.§3^§ == this)
                                                                                                                     {
                                                                                                                        if(!(_loc5_ && param1))
                                                                                                                        {
                                                                                                                           param1.§^2§(this,param2);
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              §§goto(addr468);
                                                                                                                           }
                                                                                                                           param2.invert();
                                                                                                                           addr466:
                                                                                                                           §§goto(addr483);
                                                                                                                        }
                                                                                                                        §§goto(addr466);
                                                                                                                     }
                                                                                                                     addr468:
                                                                                                                     §?^§.length = 0;
                                                                                                                     addr480:
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        §§goto(addr480);
                                                                                                                     }
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        if(true)
                                                                                                                        {
                                                                                                                           var _loc3_:DisplayObject = null;
                                                                                                                           var _loc4_:DisplayObject = this;
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              addr508:
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 §?^§.push(_loc4_);
                                                                                                                                 if(!(_loc5_ && param2))
                                                                                                                                 {
                                                                                                                                    addr504:
                                                                                                                                    _loc4_ = _loc4_.parent;
                                                                                                                                    §§goto(addr508);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              _loc4_ = param1;
                                                                                                                              if(!(_loc5_ && this))
                                                                                                                              {
                                                                                                                                 addr526:
                                                                                                                                 §§push(Boolean(_loc4_));
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             addr542:
                                                                                                                                             addr537:
                                                                                                                                             if(§?^§.indexOf(_loc4_) == -1)
                                                                                                                                             {
                                                                                                                                                _loc4_ = _loc4_.parent;
                                                                                                                                                §§goto(addr526);
                                                                                                                                             }
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                if(_loc4_ == null)
                                                                                                                                                {
                                                                                                                                                   if(_loc6_ || param1)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr555);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             _loc3_ = _loc4_;
                                                                                                                                             _loc4_ = this;
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                addr585:
                                                                                                                                                if(_loc4_ != _loc3_)
                                                                                                                                                {
                                                                                                                                                   _loc4_.§^2§(_loc4_.§3^§,§5g§);
                                                                                                                                                   if(!_loc5_)
                                                                                                                                                   {
                                                                                                                                                      param2.concat(§5g§);
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         addr581:
                                                                                                                                                         _loc4_ = _loc4_.parent;
                                                                                                                                                         §§goto(addr585);
                                                                                                                                                      }
                                                                                                                                                      addr597:
                                                                                                                                                      _loc4_ = param1;
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         addr635:
                                                                                                                                                         if(_loc4_ != _loc3_)
                                                                                                                                                         {
                                                                                                                                                            _loc4_.§^2§(_loc4_.§3^§,§5g§);
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               §"!G§.concat(§5g§);
                                                                                                                                                               if(_loc6_ || this)
                                                                                                                                                               {
                                                                                                                                                                  _loc4_ = _loc4_.parent;
                                                                                                                                                                  §§goto(addr635);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr652);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr640);
                                                                                                                                                         }
                                                                                                                                                         if(!_loc5_)
                                                                                                                                                         {
                                                                                                                                                            addr640:
                                                                                                                                                            §"!G§.invert();
                                                                                                                                                            if(_loc6_ || this)
                                                                                                                                                            {
                                                                                                                                                               addr649:
                                                                                                                                                               param2.concat(§"!G§);
                                                                                                                                                            }
                                                                                                                                                            addr652:
                                                                                                                                                            return param2;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr649);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr581);
                                                                                                                                                }
                                                                                                                                                if(_loc6_ || this)
                                                                                                                                                {
                                                                                                                                                   addr595:
                                                                                                                                                   §"!G§.identity();
                                                                                                                                                }
                                                                                                                                                §§goto(addr597);
                                                                                                                                             }
                                                                                                                                             §§goto(addr595);
                                                                                                                                          }
                                                                                                                                          addr555:
                                                                                                                                          throw new ArgumentError("Object not connected to target");
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr542);
                                                                                                                              }
                                                                                                                              §§goto(addr537);
                                                                                                                           }
                                                                                                                           §§goto(addr504);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr483:
                                                                                                                     }
                                                                                                                     return param2;
                                                                                                                  }
                                                                                                                  §§goto(addr423);
                                                                                                               }
                                                                                                            }
                                                                                                            addr385:
                                                                                                         }
                                                                                                         break;
                                                                                                         addr109:
                                                                                                         if(_loc6_ || param2)
                                                                                                         {
                                                                                                            §§push(!§§pop());
                                                                                                            continue loop39;
                                                                                                         }
                                                                                                      }
                                                                                                      addr417:
                                                                                                      §§pop();
                                                                                                      §§goto(addr418);
                                                                                                   }
                                                                                                }
                                                                                                continue loop27;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§-!n§);
                                                                                                continue loop28;
                                                                                             }
                                                                                          }
                                                                                          if(!(_loc6_ || param1))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§goto(addr109);
                                                                                          }
                                                                                          while(!_loc5_)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   continue loop26;
                                                                                                }
                                                                                                §§goto(addr277);
                                                                                                §§goto(addr189);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr400);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(!§§pop());
                                                                                          addr392:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             addr393:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   §§goto(addr394);
                                                                                                }
                                                                                                addr339:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr340:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc6_ || _loc3_)
                                                                                                         {
                                                                                                            §§goto(addr348);
                                                                                                         }
                                                                                                         §§goto(addr423);
                                                                                                      }
                                                                                                      §§goto(addr300);
                                                                                                   }
                                                                                                   §§goto(addr387);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr275:
                                                                                    }
                                                                                    §§goto(addr402);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr339);
                                                                                    §§goto(addr265);
                                                                                 }
                                                                                 addr338:
                                                                              }
                                                                              §§goto(addr275);
                                                                           }
                                                                           §§goto(addr304);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§goto(addr330);
                                                                     §§push(0);
                                                                  }
                                                                  break;
                                                                  §§goto(addr85);
                                                               }
                                                               §§goto(addr389);
                                                               addr214:
                                                            }
                                                            else
                                                            {
                                                               while(§§pop())
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop35;
                                                                     }
                                                                     param2.translate(this.§,G§,this.§78§);
                                                                     if(!(_loc5_ && param1))
                                                                     {
                                                                        §§goto(addr152);
                                                                     }
                                                                  }
                                                                  §§goto(addr423);
                                                               }
                                                               addr52:
                                                               return param2;
                                                               addr133:
                                                            }
                                                            §§goto(addr423);
                                                         }
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               §§goto(addr417);
                                                            }
                                                            §§goto(addr385);
                                                            §§goto(addr206);
                                                         }
                                                      }
                                                      §§goto(addr401);
                                                   }
                                                   §§goto(addr393);
                                                }
                                                §§goto(addr311);
                                             }
                                             break;
                                          }
                                          §§goto(addr214);
                                          if(_loc5_ && _loc3_)
                                          {
                                             continue;
                                          }
                                          if(_loc6_)
                                          {
                                             §§goto(addr133);
                                          }
                                          §§goto(addr392);
                                       }
                                       while(!_loc5_)
                                       {
                                          §§goto(addr308);
                                          §§push(!§§pop());
                                       }
                                       §§goto(addr340);
                                    }
                                    while(true)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          continue loop41;
                                       }
                                       continue loop42;
                                       §§goto(addr171);
                                    }
                                 }
                              }
                           }
                           addr423:
                           _loc4_ = this;
                           addr444:
                           if(_loc4_)
                           {
                              _loc4_.§^2§(_loc4_.§3^§,§5g§);
                              if(!_loc5_)
                              {
                                 param2.concat(§5g§);
                                 if(!_loc5_)
                                 {
                                    _loc4_ = _loc4_.parent;
                                    §§goto(addr444);
                                 }
                              }
                           }
                           return param2;
                        }
                     }
                     else
                     {
                        §§push(param1 == this.§3^§);
                     }
                     §§goto(addr415);
                  }
                  §§goto(addr418);
               }
               §§goto(addr229);
            }
            else
            {
               param2 = new Matrix();
            }
            §§goto(addr42);
         }
         §§goto(addr377);
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §0!K§("Method needs to be implemented in subclass");
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
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(this.§>L§);
                              loop5:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 loop6:
                                 while(true)
                                 {
                                    if(_loc3_ && _loc3_)
                                    {
                                       continue loop3;
                                    }
                                    §§push(§§pop());
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       loop9:
                                       while(!§§pop())
                                       {
                                          while(true)
                                          {
                                             if(this.getBounds(this,§<!E§).containsPoint(param1))
                                             {
                                                if(!(_loc3_ && this))
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc4_ || param1)
                                                      {
                                                         §§goto(addr66);
                                                      }
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§push(this.§%!N§);
                                                         if(!_loc3_)
                                                         {
                                                            addr78:
                                                            if(_loc4_ || param1)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               §§push(!§§pop());
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  continue loop8;
                                                                  §§goto(addr78);
                                                               }
                                                               addr134:
                                                            }
                                                         }
                                                         if(_loc4_ || param2)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop0;
                                                         }
                                                         continue loop6;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue;
                                                }
                                                if(_loc3_)
                                                {
                                                   break loop9;
                                                }
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                             }
                                             §§push(null);
                                             if(_loc4_ || param1)
                                             {
                                                return §§pop();
                                             }
                                             §§goto(addr117);
                                          }
                                          continue loop4;
                                       }
                                       addr114:
                                       addr117:
                                       return §§pop();
                                       §§push(null);
                                       addr114:
                                    }
                                    §§goto(addr134);
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                     §§goto(addr114);
                  }
               }
            }
         }
         addr66:
         return this;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §"!G§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§^2§(_loc2_.§3^§,§5g§);
            if(_loc3_ && _loc2_)
            {
               break;
            }
            §"!G§.concat(§5g§);
            if(_loc3_ && this)
            {
               break;
            }
            _loc2_ = _loc2_.parent;
         }
         return §"!G§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §"!G§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(true)
         {
            if(!_loc2_)
            {
               if(!_loc4_)
               {
                  §"!G§.invert();
                  break;
               }
               break;
            }
            _loc2_.§^2§(_loc2_.§3^§,§5g§);
            if(!(_loc4_ && this))
            {
               §"!G§.concat(§5g§);
               if(_loc4_ && _loc3_)
               {
                  break;
               }
            }
            _loc2_ = _loc2_.parent;
         }
         return §"!G§.transformPoint(param1);
      }
      
      public function render(param1:§`K§, param2:Number) : void
      {
         throw new §0!K§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TouchEvent = null;
         if(!_loc3_)
         {
            if(param1 is TouchEvent)
            {
               if(_loc4_ || _loc2_)
               {
                  _loc2_ = param1 as TouchEvent;
                  if(!_loc3_)
                  {
                     if(_loc2_.timestamp == this.§2!&§)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           §§goto(addr72);
                        }
                     }
                     this.§2!&§ = _loc2_.timestamp;
                     addr79:
                     super.dispatchEvent(param1);
                     §§goto(addr82);
                  }
                  addr72:
                  return;
               }
               addr82:
               return;
            }
         }
         §§goto(addr79);
      }
      
      function §+k§(param1:DisplayObjectContainer) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(true)
         {
            §§push(_loc2_ == this);
            if(!_loc7_)
            {
               §§push(!§§pop());
               if(_loc8_ || this)
               {
                  if(§§pop())
                  {
                     if(!_loc7_)
                     {
                        addr49:
                        §§pop();
                        if(!_loc7_)
                        {
                           §§push(_loc2_ == null);
                           if(_loc7_ && param1)
                           {
                           }
                           §§goto(addr63);
                        }
                        break;
                     }
                  }
                  §§goto(addr63);
               }
               addr63:
               if(§§pop())
               {
                  if(!(_loc7_ && param1))
                  {
                     break;
                  }
                  _loc3_ = §#!a§();
                  if(!(_loc7_ && _loc3_))
                  {
                     §§push(param1 == this.§3^§);
                     if(_loc8_)
                     {
                        §§push(!§§pop());
                        if(_loc8_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!(_loc7_ && param1))
                           {
                              addr111:
                              §§push(§§pop());
                              if(!(_loc7_ && this))
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§pop();
                                       if(!_loc7_)
                                       {
                                          §§push(this.§3^§);
                                          if(_loc8_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(!(_loc7_ && param1))
                                             {
                                                addr143:
                                                §§push(§§pop());
                                                if(!(_loc7_ && param1))
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         addr164:
                                                         §§pop();
                                                         if(_loc8_)
                                                         {
                                                            §§push(_loc3_.length > 0);
                                                            if(!(_loc7_ && _loc2_))
                                                            {
                                                               addr178:
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc7_ && _loc3_))
                                                                  {
                                                                     addr186:
                                                                     §§push(0);
                                                                     if(!_loc7_)
                                                                     {
                                                                        var _loc5_:* = §§pop();
                                                                        if(_loc8_)
                                                                        {
                                                                           var _loc6_:* = _loc3_;
                                                                           if(!(_loc7_ && _loc3_))
                                                                           {
                                                                              loop2:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§hasnext(_loc6_,_loc5_));
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          if(_loc8_ || param1)
                                                                                          {
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                addr237:
                                                                                                this.§3^§ = param1;
                                                                                                if(!(_loc7_ && param1))
                                                                                                {
                                                                                                   addr249:
                                                                                                   §§push(Boolean(this.§3^§));
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      addr253:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc8_ || _loc3_)
                                                                                                         {
                                                                                                            addr261:
                                                                                                            §§pop();
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               addr268:
                                                                                                               if(_loc3_.length > 0)
                                                                                                               {
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr322);
                                                                                                            }
                                                                                                            addr272:
                                                                                                            _loc5_ = 0;
                                                                                                            if(!(_loc7_ && this))
                                                                                                            {
                                                                                                               _loc6_ = _loc3_;
                                                                                                               if(_loc7_ && param1)
                                                                                                               {
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§hasnext(_loc6_,_loc5_));
                                                                                                                  break loop2;
                                                                                                               }
                                                                                                               addr318:
                                                                                                            }
                                                                                                            addr321:
                                                                                                            §§goto(addr322);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr268);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr322);
                                                                                          }
                                                                                          §§goto(addr321);
                                                                                       }
                                                                                       addr320:
                                                                                       §§goto(addr321);
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
                                                                                    if(!(_loc7_ && _loc2_))
                                                                                    {
                                                                                       this.addEventListeningObject(this,_loc4_);
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr320);
                                                                              }
                                                                           }
                                                                           §§goto(addr216);
                                                                        }
                                                                        §§goto(addr321);
                                                                     }
                                                                     §§goto(addr272);
                                                                  }
                                                               }
                                                               §§goto(addr237);
                                                            }
                                                            §§goto(addr268);
                                                         }
                                                         §§goto(addr186);
                                                      }
                                                      §§goto(addr268);
                                                   }
                                                   §§goto(addr178);
                                                }
                                             }
                                             §§goto(addr253);
                                          }
                                          §§goto(addr249);
                                       }
                                       §§goto(addr268);
                                    }
                                    §§goto(addr261);
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr253);
                           }
                           §§goto(addr164);
                        }
                     }
                     §§goto(addr111);
                  }
               }
               continue;
               addr322:
               return;
            }
            §§goto(addr49);
         }
         if(_loc2_ == this)
         {
            if(!_loc7_)
            {
               throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
            }
         }
         §§goto(addr82);
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§3^§);
            if(_loc4_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr31);
            }
            §§pop().removeEventListeningObject(param1,param2);
         }
         addr31:
         if(_loc4_)
         {
            §§push(this.§3^§);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this.§3^§);
            if(_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr45);
            }
            §§pop().addEventListeningObject(param1,param2);
         }
         addr45:
         if(_loc3_)
         {
            §§push(this.§3^§);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.dispatchEvent(param1);
         }
      }
      
      public function get §4-§() : Matrix
      {
         return this.§^2§(this.§3^§);
      }
      
      public function get §]!N§() : Rectangle
      {
         return this.getBounds(this.§3^§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§3^§,§<!E§).width;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§2!F§ = 1;
         }
         §§push(this.width);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            if(_loc2_ == 0)
            {
               this.scaleX = 1;
               if(!_loc4_)
               {
                  if(_loc4_)
                  {
                     addr73:
                     §§push(this);
                     §§push(param1);
                     if(_loc3_)
                     {
                        §§push(§§pop() / _loc2_);
                     }
                     §§pop().scaleX = §§pop();
                     addr80:
                  }
                  return;
               }
               §§goto(addr80);
            }
         }
         §§goto(addr73);
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.§3^§,§<!E§).height;
      }
      
      public function set height(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§93§ = 1;
         }
         §§push(this.height);
         if(!(_loc3_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && this))
         {
            if(_loc2_ == 0)
            {
               this.scaleY = 1;
               if(!_loc4_)
               {
                  addr91:
               }
               return;
            }
            if(!_loc3_)
            {
               addr79:
               §§push(this);
               §§push(param1);
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop() / _loc2_);
               }
               §§pop().scaleY = §§pop();
            }
            §§goto(addr91);
         }
         §§goto(addr79);
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
               if(_loc3_ || this)
               {
                  continue loop0;
               }
            }
            return _loc1_;
         }
      }
      
      override public function addEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super.addEventListener(param1,param2);
         }
         do
         {
            this.addEventListeningObject(this,param1);
         }
         while(_loc3_);
         
      }
      
      override public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super.removeEventListener(param1,param2);
            while(!hasEventListener(param1))
            {
               if(!_loc4_)
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
                  this.removeEventListeningObject(this,param1);
               }
               break;
            }
            return;
         }
         §§goto(addr47);
      }
      
      override public function removeEventListeners(param1:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:Array = §#!a§();
         if(_loc6_ || param1)
         {
            super.removeEventListeners(param1);
            if(!_loc7_)
            {
               if(param1 == null)
               {
                  addr48:
                  for each(_loc3_ in _loc2_)
                  {
                     if(_loc6_)
                     {
                        this.removeEventListeningObject(this,_loc3_);
                     }
                  }
                  if(_loc7_)
                  {
                  }
               }
               else
               {
                  this.removeEventListeningObject(this,param1);
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      public function §0! §(param1:Matrix3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§-!n§);
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
                           while(true)
                           {
                              §§pop();
                              addr512:
                              while(true)
                              {
                                 §§push(this.§2!F§);
                                 addr498:
                                 while(true)
                                 {
                                    §§push(1);
                                    addr499:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                 }
                              }
                           }
                           addr511:
                        }
                        while(true)
                        {
                           loop9:
                           while(true)
                           {
                              §§push(§§pop());
                              loop10:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       §§pop();
                                       loop12:
                                       while(true)
                                       {
                                          §§push(this.§93§);
                                          if(_loc3_)
                                          {
                                             §§push(1);
                                             if(!_loc2_)
                                             {
                                                §§push(§§pop() == §§pop());
                                                while(true)
                                                {
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         §§push(this.§,G§);
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                            loop16:
                                                            while(true)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§§pop() == §§pop());
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_ || param1)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        loop18:
                                                                        while(_loc3_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           while(_loc3_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       loop27:
                                                                                       while(true)
                                                                                       {
                                                                                          param1.prependTranslation(this.§,G§,this.§78§,0);
                                                                                          loop28:
                                                                                          while(_loc3_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§-!n§);
                                                                                                loop30:
                                                                                                while(_loc3_ || this)
                                                                                                {
                                                                                                   if(!(_loc3_ || param1))
                                                                                                   {
                                                                                                      break loop12;
                                                                                                   }
                                                                                                   §§push(0);
                                                                                                   loop31:
                                                                                                   while(_loc3_ || _loc3_)
                                                                                                   {
                                                                                                      if(§§pop() != §§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               param1.prependRotation(this.§-!n§ / Math.PI * 180,Vector3D.Z_AXIS);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr91:
                                                                                                                  if(_loc2_ && param1)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     continue loop28;
                                                                                                                  }
                                                                                                                  if(!(_loc2_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        param1.prependTranslation(this.§&5§,this.§1!O§,0);
                                                                                                                        addr25:
                                                                                                                        return;
                                                                                                                        addr116:
                                                                                                                     }
                                                                                                                     break loop14;
                                                                                                                  }
                                                                                                                  §§goto(addr25);
                                                                                                               }
                                                                                                               addr353:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr512);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr498);
                                                                                                         addr340:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§2!F§);
                                                                                                         loop35:
                                                                                                         while(!_loc2_)
                                                                                                         {
                                                                                                            §§push(1);
                                                                                                            loop36:
                                                                                                            while(!(_loc2_ && this))
                                                                                                            {
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                               loop37:
                                                                                                               for(; !(_loc2_ && _loc2_); while(true)
                                                                                                               {
                                                                                                                  if(_loc3_ || _loc2_)
                                                                                                                  {
                                                                                                                     continue loop14;
                                                                                                                  }
                                                                                                                  continue loop37;
                                                                                                                  §§goto(addr175);
                                                                                                               },continue loop14)
                                                                                                               {
                                                                                                                  §§push(!§§pop());
                                                                                                                  loop38:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     while(!(_loc2_ && param1))
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              loop45:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    loop46:
                                                                                                                                    while(!_loc2_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc2_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          param1.prependScale(this.§2!F§,this.§93§,1);
                                                                                                                                          loop47:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§&5§);
                                                                                                                                                         loop49:
                                                                                                                                                         while(!_loc2_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               break loop36;
                                                                                                                                                            }
                                                                                                                                                            §§push(0);
                                                                                                                                                            while(!_loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() == §§pop());
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc3_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(!§§pop());
                                                                                                                                                                     if(!(_loc2_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop45;
                                                                                                                                                                     }
                                                                                                                                                                     addr175:
                                                                                                                                                                     addr372:
                                                                                                                                                                     addr175:
                                                                                                                                                                     addr175:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc2_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    §§push(this.§78§);
                                                                                                                                                                                    addr189:
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    addr494:
                                                                                                                                                                                    addr493:
                                                                                                                                                                                 }
                                                                                                                                                                                 addr188:
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 while(!_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc2_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§1!O§);
                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop49;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr34);
                                                                                                                                                                                       continue loop49;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop46;
                                                                                                                                                                                    §§goto(addr188);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop47;
                                                                                                                                                                                 break loop30;
                                                                                                                                                                              }
                                                                                                                                                                              break loop45;
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop37;
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(!§§pop());
                                                                                                                                                                        continue loop9;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        break loop46;
                                                                                                                                                                     }
                                                                                                                                                                     addr312:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr116);
                                                                                                                                                               §§push(0);
                                                                                                                                                               if(_loc2_ && this)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() == §§pop());
                                                                                                                                                               if(!(_loc2_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc2_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop17;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop38;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr128);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr175);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr71:
                                                                                                                                                                  if(_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop18;
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     while(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc2_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc3_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr91);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr189);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr25);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr25);
                                                                                                                                                                     addr75:
                                                                                                                                                                  }
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     break loop28;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr392);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop31;
                                                                                                                                                         }
                                                                                                                                                         addr202:
                                                                                                                                                         addr357:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc2_ && _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop30;
                                                                                                                                                               }
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(1);
                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc3_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr224);
                                                                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr489);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr287);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr357);
                                                                                                                                                               continue loop30;
                                                                                                                                                            }
                                                                                                                                                            continue loop35;
                                                                                                                                                         }
                                                                                                                                                         addr357:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc3_ || param1)
                                                                                                                                                            {
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  break loop31;
                                                                                                                                                               }
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            addr486:
                                                                                                                                                            if(!_loc2_)
                                                                                                                                                            {
                                                                                                                                                               addr489:
                                                                                                                                                               §§push(§§pop() == 0);
                                                                                                                                                               break loop37;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr498);
                                                                                                                                                         }
                                                                                                                                                         continue loop0;
                                                                                                                                                      }
                                                                                                                                                      addr117:
                                                                                                                                                   }
                                                                                                                                                   while(!_loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr357);
                                                                                                                                                      §§push(this.§78§);
                                                                                                                                                   }
                                                                                                                                                   continue loop12;
                                                                                                                                                   addr425:
                                                                                                                                                }
                                                                                                                                                continue loop27;
                                                                                                                                             }
                                                                                                                                             §§goto(addr340);
                                                                                                                                             §§goto(addr498);
                                                                                                                                          }
                                                                                                                                          continue loop28;
                                                                                                                                       }
                                                                                                                                       §§goto(addr494);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr202);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr117);
                                                                                                                              }
                                                                                                                              addr417:
                                                                                                                              while(!(_loc2_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 §§goto(addr425);
                                                                                                                              }
                                                                                                                              continue loop2;
                                                                                                                           }
                                                                                                                           addr256:
                                                                                                                        }
                                                                                                                        §§goto(addr312);
                                                                                                                     }
                                                                                                                     continue loop10;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(!§§pop());
                                                                                                               break loop18;
                                                                                                            }
                                                                                                            if(_loc3_ || _loc3_)
                                                                                                            {
                                                                                                               §§goto(addr443);
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr499);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop15;
                                                                                                         §§goto(addr353);
                                                                                                      }
                                                                                                   }
                                                                                                   while(!_loc2_)
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§goto(addr372);
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr485:
                                                                                                         §§goto(addr486);
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                      }
                                                                                                      §§goto(addr332);
                                                                                                   }
                                                                                                   addr332:
                                                                                                   continue loop16;
                                                                                                }
                                                                                                addr433:
                                                                                                §§goto(addr434);
                                                                                             }
                                                                                          }
                                                                                          param1.prependTranslation(this.§,G§ + this.§&5§,this.§78§ + this.§1!O§,0);
                                                                                          §§goto(addr459);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr314);
                                                                                 }
                                                                                 addr380:
                                                                              }
                                                                              §§goto(addr417);
                                                                              if(_loc2_ && param1)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(_loc3_)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    §§goto(addr175);
                                                                                 }
                                                                                 §§goto(addr75);
                                                                              }
                                                                              if(!§§pop())
                                                                              {
                                                                                 §§goto(addr493);
                                                                              }
                                                                              §§goto(addr443);
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                        §§goto(addr492);
                                                                        §§push(§§pop());
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr511);
                                                                     }
                                                                     §§goto(addr512);
                                                                  }
                                                               }
                                                               §§goto(addr433);
                                                            }
                                                            continue loop1;
                                                         }
                                                      }
                                                      break;
                                                      if(_loc2_ && param1)
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc3_ || _loc2_))
                                                      {
                                                         continue loop11;
                                                      }
                                                      §§goto(addr256);
                                                      §§push(!§§pop());
                                                   }
                                                   break loop12;
                                                }
                                                addr469:
                                             }
                                             §§goto(addr489);
                                          }
                                          break;
                                       }
                                       §§goto(addr485);
                                    }
                                 }
                                 §§goto(addr469);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr392);
      }
      
      public function get x() : Number
      {
         return this.§,G§;
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§,G§ = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.§78§;
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§78§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§&5§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§&5§ = param1;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§1!O§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§1!O§ = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§2!F§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§2!F§ = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§93§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§93§ = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§-!n§;
      }
      
      public function set rotation(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         loop0:
         while(true)
         {
            §§push(param1);
            loop1:
            while(true)
            {
               §§push(-Math.PI);
               if(!(_loc3_ && _loc2_))
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  if(§§pop() >= §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(param1);
                           if(!(_loc3_ && param1))
                           {
                              if(_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 if(_loc3_)
                                 {
                                    addr126:
                                    §§push(Number(§§pop()));
                                    break;
                                 }
                                 if(§§pop() <= Math.PI)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop2;
                                          }
                                          this.§-!n§ = param1;
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             continue loop3;
                                          }
                                          addr110:
                                       }
                                    }
                                    if(_loc2_ || _loc2_)
                                    {
                                       return;
                                    }
                                    continue loop0;
                                 }
                                 §§push(param1);
                                 if(_loc2_ || this)
                                 {
                                    §§push(Math.PI * 2);
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       addr106:
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             break loop3;
                                          }
                                          §§push(Number(§§pop()));
                                          while(true)
                                          {
                                             param1 = §§pop();
                                          }
                                       }
                                    }
                                    addr105:
                                 }
                                 §§goto(addr109);
                                 §§goto(addr110);
                              }
                              §§goto(addr106);
                           }
                           §§goto(addr109);
                        }
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(Math.PI * 2);
                        break;
                     }
                  }
                  param1 = §§pop();
                  continue loop0;
               }
               §§goto(addr105);
            }
            §§goto(addr126);
         }
      }
      
      public function get alpha() : Number
      {
         return this.§%I§;
      }
      
      public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this);
            if(!_loc3_)
            {
               §§push(param1);
               if(_loc2_ || _loc3_)
               {
                  §§push(§§pop() < 0);
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || this)
                        {
                           addr56:
                           §§push(0);
                           if(_loc2_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc3_)
                              {
                              }
                           }
                           else
                           {
                              addr93:
                           }
                        }
                        else
                        {
                           addr84:
                           §§push(Number(1));
                           if(!(_loc3_ && param1))
                           {
                              §§goto(addr93);
                           }
                        }
                        §§goto(addr103);
                     }
                     else
                     {
                        §§push(param1);
                        if(!(_loc3_ && param1))
                        {
                           §§push(§§pop() > 1);
                        }
                        §§goto(addr93);
                     }
                  }
                  if(§§pop())
                  {
                     §§goto(addr84);
                  }
                  else
                  {
                     §§push(param1);
                     if(!(_loc3_ && param1))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr103);
               }
               §§goto(addr93);
            }
            §§goto(addr56);
         }
         addr103:
         §§pop().§%I§ = §§pop();
      }
      
      public function get visible() : Boolean
      {
         return this.§>L§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>L§ = param1;
         }
      }
      
      public function get §@!U§() : Boolean
      {
         return this.§%!N§;
      }
      
      public function set §@!U§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§%!N§ = param1;
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
         if(_loc3_)
         {
            this.mName = param1;
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§3^§;
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
