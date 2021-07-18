package §+!-§
{
   import §%!j§.§&Y§;
   import §]!R§.§'3§;
   import §]!R§.§]P§;
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
      
      private static var §?!Q§:Vector.<DisplayObject>;
      
      private static var § !g§:Rectangle;
      
      private static var §^L§:Matrix;
      
      private static var §6"#§:Matrix;
      
      protected static var §@9§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §?!Q§ = new Vector.<DisplayObject>(0);
            loop0:
            while(true)
            {
               § !g§ = new Rectangle();
               while(true)
               {
                  §^L§ = new Matrix();
                  while(_loc1_)
                  {
                     continue loop0;
                     while(!(_loc2_ && _loc2_))
                     {
                        §@9§ = 0;
                        if(!(_loc2_ && _loc1_))
                        {
                           return;
                           addr34:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr34);
      }
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §=;§:Number;
      
      private var §62§:Number;
      
      private var §4u§:Number;
      
      private var § B§:Number;
      
      private var §0!>§:Number;
      
      private var §!a§:Number;
      
      private var §1!'§:Boolean;
      
      private var §@t§:Boolean;
      
      private var §@P§:Number;
      
      private var mName:String;
      
      private var §"!?§:Number;
      
      private var §6"4§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            if(_loc3_ || _loc1_)
            {
               §§goto(addr28);
            }
            §§goto(addr100);
         }
         addr28:
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            if(_loc3_ || _loc1_)
            {
               throw new §'3§();
            }
            addr124:
            var _loc1_:*;
            this.§@t§ = _loc1_ = true;
            this.§1!'§ = _loc1_;
            if(_loc3_)
            {
               addr145:
               this.§"!?§ = -1;
            }
         }
         else
         {
            §§push(this);
            §§push(this);
            §§push(this);
            §§push(this);
            §§push(this.§0!>§ = 0);
            if(!(_loc2_ && _loc2_))
            {
               §§push(_loc1_ = §§pop());
            }
            §§pop().§62§ = §§pop();
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(_loc1_ = §§pop());
            }
            §§pop().§=;§ = §§pop();
            §§push(_loc1_);
            if(!_loc2_)
            {
               §§push(_loc1_ = §§pop());
            }
            §§pop().mY = §§pop();
            §§pop().mX = _loc1_;
            if(_loc3_)
            {
               addr100:
               §§push(this);
               §§push(this);
               §§push(this.§!a§ = 1);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(_loc1_ = §§pop());
               }
               §§pop().§ B§ = §§pop();
               §§pop().§4u§ = _loc1_;
               if(_loc3_)
               {
                  §§goto(addr124);
               }
               §§goto(addr145);
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.removeEventListeners();
         }
      }
      
      public function §?J§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§6"4§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr72:
                     this.§6"4§.removeChild(this);
                  }
                  while(true)
                  {
                     addr41:
                     if(_loc2_ || _loc2_)
                     {
                        this.dispose();
                     }
                     if(!_loc2_)
                     {
                        continue;
                     }
                     addr24:
                     return;
                     addr52:
                  }
                  addr74:
               }
               while(true)
               {
                  if(param1)
                  {
                     §§goto(addr41);
                  }
                  break;
                  §§goto(addr74);
               }
               §§goto(addr24);
            }
            §§goto(addr72);
         }
         §§goto(addr52);
      }
      
      public function §1!%§(param1:DisplayObject, param2:Matrix = null) : Matrix
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(param2)
            {
               if(_loc6_)
               {
                  param2.identity();
                  if(!_loc5_)
                  {
                     addr32:
                     if(param1 == this)
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           return param2;
                        }
                        addr307:
                        loop40:
                        while(true)
                        {
                           §§push(this.§ B§);
                           loop41:
                           while(true)
                           {
                              if(!(_loc5_ && param2))
                              {
                                 if(_loc6_)
                                 {
                                    §§push(1);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       loop42:
                                       while(true)
                                       {
                                          if(_loc6_)
                                          {
                                             if(!_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(_loc6_ || this)
                                                   {
                                                      §§push(!§§pop());
                                                      loop24:
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop26:
                                                               while(true)
                                                               {
                                                                  param2.scale(this.§4u§,this.§ B§);
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        loop27:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§0!>§);
                                                                           loop28:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc6_ || this))
                                                                              {
                                                                                 continue loop41;
                                                                              }
                                                                              §§push(0);
                                                                              loop29:
                                                                              while(_loc6_ || _loc3_)
                                                                              {
                                                                                 if(§§pop() != §§pop())
                                                                                 {
                                                                                    if(!(_loc5_ && param2))
                                                                                    {
                                                                                       param2.rotate(this.§0!>§);
                                                                                       if(_loc6_ || this)
                                                                                       {
                                                                                       }
                                                                                       break loop26;
                                                                                    }
                                                                                    break loop26;
                                                                                 }
                                                                                 §§push(this.mX);
                                                                                 loop30:
                                                                                 while(_loc6_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    while(_loc6_)
                                                                                    {
                                                                                       §§push(§§pop() == §§pop());
                                                                                       if(_loc6_ || param2)
                                                                                       {
                                                                                          §§push(!§§pop());
                                                                                          loop32:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc5_ && this))
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr126:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               param2.translate(this.mX,this.mY);
                                                                                                               if(_loc6_ || _loc3_)
                                                                                                               {
                                                                                                                  if(!(_loc6_ || this))
                                                                                                                  {
                                                                                                                     continue loop26;
                                                                                                                  }
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     if(_loc6_ || _loc3_)
                                                                                                                     {
                                                                                                                        break loop27;
                                                                                                                     }
                                                                                                                     §§goto(addr360);
                                                                                                                  }
                                                                                                                  §§goto(addr345);
                                                                                                               }
                                                                                                               break loop26;
                                                                                                            }
                                                                                                            break loop27;
                                                                                                         }
                                                                                                         loop33:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc6_ || _loc3_)
                                                                                                            {
                                                                                                               if(!(_loc5_ && param2))
                                                                                                               {
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        break loop26;
                                                                                                                     }
                                                                                                                     §§push(this.mY);
                                                                                                                     if(_loc5_ && _loc3_)
                                                                                                                     {
                                                                                                                        continue loop30;
                                                                                                                     }
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        continue loop28;
                                                                                                                     }
                                                                                                                     §§goto(addr85);
                                                                                                                     continue loop30;
                                                                                                                  }
                                                                                                                  loop7:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        addr365:
                                                                                                                        §§push(this.§6"4§ == null);
                                                                                                                        if(_loc6_ || param2)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§=;§);
                                                                                                                                    break loop24;
                                                                                                                                 }
                                                                                                                                 addr360:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 if(param1 == null)
                                                                                                                                 {
                                                                                                                                    break loop26;
                                                                                                                                 }
                                                                                                                                 if(param1.§6"4§ == this)
                                                                                                                                 {
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       param1.§1!%§(this,param2);
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       addr450:
                                                                                                                                       return param2;
                                                                                                                                       addr458:
                                                                                                                                    }
                                                                                                                                    param2.invert();
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr443:
                                                                                                                                    §?!Q§.length = 0;
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr443);
                                                                                                                                       }
                                                                                                                                       §§goto(addr458);
                                                                                                                                    }
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       §§goto(addr450);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       var _loc3_:DisplayObject = null;
                                                                                                                                       var _loc4_:DisplayObject = this;
                                                                                                                                       if(_loc6_ || param2)
                                                                                                                                       {
                                                                                                                                          addr488:
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             §?!Q§.push(_loc4_);
                                                                                                                                             if(!(_loc5_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                _loc4_ = _loc4_.parent;
                                                                                                                                                §§goto(addr488);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       _loc4_ = param1;
                                                                                                                                       if(_loc6_ || param2)
                                                                                                                                       {
                                                                                                                                          addr506:
                                                                                                                                          §§push(Boolean(_loc4_));
                                                                                                                                          if(!(_loc5_ && param1))
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc6_)
                                                                                                                                                {
                                                                                                                                                   addr519:
                                                                                                                                                   §§pop();
                                                                                                                                                   addr544:
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§?!Q§.indexOf(_loc4_) == -1);
                                                                                                                                                   }
                                                                                                                                                   _loc3_ = _loc4_;
                                                                                                                                                   _loc4_ = this;
                                                                                                                                                   if(_loc6_ || param2)
                                                                                                                                                   {
                                                                                                                                                      addr585:
                                                                                                                                                      if(_loc4_ != _loc3_)
                                                                                                                                                      {
                                                                                                                                                         _loc4_.§1!%§(_loc4_.§6"4§,§^L§);
                                                                                                                                                         if(!(_loc5_ && this))
                                                                                                                                                         {
                                                                                                                                                            param2.concat(§^L§);
                                                                                                                                                            if(_loc6_ || param2)
                                                                                                                                                            {
                                                                                                                                                               addr581:
                                                                                                                                                               _loc4_ = _loc4_.parent;
                                                                                                                                                               §§goto(addr585);
                                                                                                                                                            }
                                                                                                                                                            addr595:
                                                                                                                                                            §6"#§.identity();
                                                                                                                                                            _loc4_ = param1;
                                                                                                                                                            if(_loc6_ || this)
                                                                                                                                                            {
                                                                                                                                                               addr635:
                                                                                                                                                               if(_loc4_ != _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  _loc4_.§1!%§(_loc4_.§6"4§,§^L§);
                                                                                                                                                                  if(_loc6_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     §6"#§.concat(§^L§);
                                                                                                                                                                     if(!(_loc5_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        _loc4_ = _loc4_.parent;
                                                                                                                                                                        §§goto(addr635);
                                                                                                                                                                     }
                                                                                                                                                                     addr650:
                                                                                                                                                                     §6"#§.invert();
                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        addr654:
                                                                                                                                                                        param2.concat(§6"#§);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr657);
                                                                                                                                                                  }
                                                                                                                                                                  addr657:
                                                                                                                                                                  return param2;
                                                                                                                                                               }
                                                                                                                                                               if(_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr650);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr654);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr581);
                                                                                                                                                      }
                                                                                                                                                      if(!(_loc5_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr595);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr595);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                _loc4_ = _loc4_.parent;
                                                                                                                                                §§goto(addr506);
                                                                                                                                             }
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                if(_loc4_ == null)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc6_ || param1))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr544);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr544);
                                                                                                                                             }
                                                                                                                                             throw new ArgumentError("Object not connected to target");
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr519);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr450);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr358:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           addr366:
                                                                                                                           addr391:
                                                                                                                           while(!(_loc5_ && param2))
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    addr375:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§62§);
                                                                                                                                       break loop30;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr374:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr334:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       param2.translate(-this.§=;§,-this.§62§);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§4u§);
                                                                                                                                       addr299:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(1);
                                                                                                                                          addr300:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() == §§pop());
                                                                                                                                             break loop33;
                                                                                                                                          }
                                                                                                                                          continue loop41;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr375);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    addr393:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(param1 == null);
                                                                                                                                       addr380:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          addr381:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                continue loop7;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr392:
                                                                                                                              }
                                                                                                                              §§goto(addr358);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr365:
                                                                                                                     }
                                                                                                                     break loop26;
                                                                                                                  }
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            addr304:
                                                                                                            addr110:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               addr305:
                                                                                                               while(_loc6_)
                                                                                                               {
                                                                                                                  continue loop40;
                                                                                                               }
                                                                                                               §§goto(addr393);
                                                                                                            }
                                                                                                            if(!(_loc5_ && param1))
                                                                                                            {
                                                                                                               continue loop32;
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(!§§pop());
                                                                                                            addr302:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               break loop32;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr345);
                                                                                                      }
                                                                                                      §§goto(addr381);
                                                                                                   }
                                                                                                   §§goto(addr366);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr392);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                continue loop24;
                                                                                             }
                                                                                             §§goto(addr304);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr190);
                                                                                       §§push(0);
                                                                                       if(!(_loc6_ || param1))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§push(§§pop() == §§pop());
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             if(_loc5_ && _loc3_)
                                                                                             {
                                                                                                continue loop42;
                                                                                             }
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   §§goto(addr110);
                                                                                                   §§push(!§§pop());
                                                                                                }
                                                                                                §§goto(addr380);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr365);
                                                                                             }
                                                                                             addr364:
                                                                                          }
                                                                                          §§goto(addr110);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr364);
                                                                                       }
                                                                                    }
                                                                                    continue loop29;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(0);
                                                                                    break loop29;
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    addr315:
                                                                                    if(_loc5_ && _loc3_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr333);
                                                                                    §§push(!§§pop());
                                                                                 }
                                                                                 §§goto(addr334);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr391);
                                                                                 §§goto(addr315);
                                                                              }
                                                                           }
                                                                           continue loop41;
                                                                        }
                                                                        return param2;
                                                                        addr210:
                                                                     }
                                                                     §§goto(addr305);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr398);
                                                            }
                                                            §§goto(addr210);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr363);
                                                      }
                                                      addr362:
                                                   }
                                                   §§goto(addr365);
                                                }
                                                §§goto(addr374);
                                             }
                                             §§goto(addr334);
                                          }
                                          §§goto(addr302);
                                       }
                                    }
                                    §§goto(addr300);
                                 }
                                 §§goto(addr362);
                              }
                              §§goto(addr299);
                           }
                        }
                        addr307:
                     }
                     else
                     {
                        §§push(param1 == this.§6"4§);
                     }
                     §§goto(addr390);
                  }
                  §§goto(addr307);
               }
               addr398:
               _loc4_ = this;
               while(_loc4_)
               {
                  _loc4_.§1!%§(_loc4_.§6"4§,§^L§);
                  if(!_loc6_)
                  {
                     break;
                  }
                  param2.concat(§^L§);
                  if(!(_loc6_ || _loc3_))
                  {
                     break;
                  }
                  _loc4_ = _loc4_.parent;
               }
               return param2;
            }
            param2 = new Matrix();
            §§goto(addr32);
         }
         §§goto(addr307);
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §]P§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
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
                              §§push(this.§1!'§);
                              loop5:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 loop6:
                                 while(!_loc4_)
                                 {
                                    §§push(§§pop());
                                    if(_loc4_ && param2)
                                    {
                                       continue loop2;
                                    }
                                    if(§§pop())
                                    {
                                       loop9:
                                       while(!§§pop())
                                       {
                                          while(this.getBounds(this,§ !g§).containsPoint(param1))
                                          {
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             addr62:
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                if(_loc3_ || this)
                                                {
                                                   return this;
                                                }
                                                break loop9;
                                             }
                                             if(!_loc4_)
                                             {
                                                continue;
                                             }
                                             loop8:
                                             while(true)
                                             {
                                                if(_loc3_ || param2)
                                                {
                                                   §§push(this.§@t§);
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      addr83:
                                                      if(_loc3_ || param2)
                                                      {
                                                         if(_loc3_ || this)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(!§§pop());
                                                            continue loop5;
                                                         }
                                                         continue loop6;
                                                      }
                                                      addr129:
                                                      while(!(_loc4_ && this))
                                                      {
                                                         §§pop();
                                                         continue loop8;
                                                         §§goto(addr83);
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop4;
                                             }
                                             continue loop0;
                                          }
                                          §§push(null);
                                          if(_loc3_ || _loc3_)
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr110);
                                       }
                                       addr110:
                                       return §§pop();
                                       §§push(null);
                                       addr107:
                                    }
                                    §§goto(addr129);
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                     §§goto(addr107);
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §6"#§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§1!%§(_loc2_.§6"4§,§^L§);
            if(!_loc3_)
            {
               break;
            }
            §6"#§.concat(§^L§);
            if(!(_loc3_ || _loc3_))
            {
               break;
            }
            _loc2_ = _loc2_.parent;
         }
         return §6"#§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §6"#§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(true)
         {
            if(!_loc2_)
            {
               if(!(_loc4_ && _loc2_))
               {
                  break;
               }
            }
            else
            {
               _loc2_.§1!%§(_loc2_.§6"4§,§^L§);
               if(!(_loc3_ || param1))
               {
                  break;
               }
               §6"#§.concat(§^L§);
               if(!_loc4_)
               {
                  continue;
               }
            }
            §§goto(addr77);
         }
         §6"#§.invert();
         addr77:
         return §6"#§.transformPoint(param1);
      }
      
      public function render(param1:§&Y§, param2:Number) : void
      {
         throw new §]P§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TouchEvent = null;
         if(_loc3_)
         {
            if(param1 is TouchEvent)
            {
               if(!(_loc4_ && _loc3_))
               {
                  _loc2_ = param1 as TouchEvent;
                  if(!(_loc4_ && this))
                  {
                     if(_loc2_.timestamp == this.§"!?§)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           §§goto(addr66);
                        }
                     }
                     this.§"!?§ = _loc2_.timestamp;
                     addr83:
                     super.dispatchEvent(param1);
                     §§goto(addr86);
                  }
                  addr66:
                  return;
               }
               addr86:
               return;
            }
         }
         §§goto(addr83);
      }
      
      function §3![§(param1:DisplayObjectContainer) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(true)
         {
            §§push(_loc2_ == this);
            if(!(_loc8_ && _loc2_))
            {
               §§push(!§§pop());
               if(_loc7_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  if(!(_loc8_ && this))
                  {
                     §§pop();
                     if(!_loc8_)
                     {
                        §§push(_loc2_ == null);
                        if(!(_loc7_ || param1))
                        {
                           continue;
                        }
                     }
                     else
                     {
                        addr86:
                        _loc3_ = §9+§();
                        if(!(_loc8_ && param1))
                        {
                           §§push(param1 == this.§6"4§);
                           if(_loc7_)
                           {
                              §§push(!§§pop());
                              if(!(_loc8_ && _loc3_))
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc7_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc8_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc8_)
                                          {
                                             addr121:
                                             §§pop();
                                             if(_loc7_)
                                             {
                                                §§push(this.§6"4§);
                                                if(!_loc8_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!_loc8_)
                                                   {
                                                      addr132:
                                                      §§push(§§pop());
                                                      if(_loc7_ || _loc3_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               §§pop();
                                                               if(_loc7_)
                                                               {
                                                                  §§push(_loc3_.length > 0);
                                                                  if(!_loc8_)
                                                                  {
                                                                     addr162:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc7_)
                                                                           {
                                                                              var _loc5_:* = §§pop();
                                                                              if(_loc7_)
                                                                              {
                                                                                 var _loc6_:* = _loc3_;
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                 }
                                                                                 loop2:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§hasnext(_loc6_,_loc5_));
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             this.removeEventListeningObject(this,_loc4_);
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       if(!(_loc8_ && _loc3_))
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                addr206:
                                                                                                this.§6"4§ = param1;
                                                                                                if(_loc7_ || _loc2_)
                                                                                                {
                                                                                                   addr216:
                                                                                                   §§push(Boolean(this.§6"4§));
                                                                                                   if(!(_loc8_ && _loc3_))
                                                                                                   {
                                                                                                      addr227:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc7_ || this)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               addr242:
                                                                                                               if(_loc3_.length > 0)
                                                                                                               {
                                                                                                                  if(_loc7_ || param1)
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr296);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr242);
                                                                                                }
                                                                                                addr251:
                                                                                                _loc5_ = 0;
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                }
                                                                                                addr295:
                                                                                             }
                                                                                             §§goto(addr296);
                                                                                          }
                                                                                          _loc6_ = _loc3_;
                                                                                          if(_loc8_ && param1)
                                                                                          {
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§hasnext(_loc6_,_loc5_));
                                                                                             break loop2;
                                                                                          }
                                                                                          addr292:
                                                                                       }
                                                                                       §§goto(addr295);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                                       if(_loc7_ || _loc3_)
                                                                                       {
                                                                                          this.addEventListeningObject(this,_loc4_);
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr294);
                                                                                 }
                                                                              }
                                                                              §§goto(addr295);
                                                                           }
                                                                           §§goto(addr251);
                                                                        }
                                                                        §§goto(addr216);
                                                                     }
                                                                     §§goto(addr206);
                                                                  }
                                                                  §§goto(addr242);
                                                               }
                                                               addr296:
                                                               return;
                                                            }
                                                            §§goto(addr242);
                                                         }
                                                         §§goto(addr162);
                                                      }
                                                      §§goto(addr227);
                                                   }
                                                   §§goto(addr242);
                                                }
                                                §§goto(addr216);
                                             }
                                             §§goto(addr242);
                                          }
                                       }
                                       §§goto(addr132);
                                    }
                                    §§goto(addr227);
                                 }
                                 §§goto(addr132);
                              }
                           }
                           §§goto(addr121);
                        }
                        §§goto(addr216);
                     }
                  }
               }
               §§push(!§§pop());
            }
         }
         if(!_loc8_)
         {
            if(_loc2_ == this)
            {
               if(!_loc8_)
               {
                  §§goto(addr80);
               }
            }
            §§goto(addr86);
         }
         addr80:
         throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§6"4§);
            if(!_loc4_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr55);
            }
            §§pop().removeEventListeningObject(param1,param2);
         }
         addr55:
         if(!(_loc4_ && param2))
         {
            §§push(this.§6"4§);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§6"4§);
            if(_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr55);
            }
            §§pop().addEventListeningObject(param1,param2);
         }
         addr55:
         if(!(_loc4_ && param1))
         {
            §§push(this.§6"4§);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.dispatchEvent(param1);
         }
      }
      
      public function get § for§() : Matrix
      {
         return this.§1!%§(this.§6"4§);
      }
      
      public function get §?>§() : Rectangle
      {
         return this.getBounds(this.§6"4§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§6"4§,§ !g§).width;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§4u§ = 1;
         }
         §§push(this.width);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            if(_loc2_ == 0)
            {
               this.scaleX = 1;
               if(!(_loc3_ && param1))
               {
                  if(!_loc4_)
                  {
                     addr79:
                     §§push(this);
                     §§push(param1);
                     if(_loc4_)
                     {
                        §§push(§§pop() / _loc2_);
                     }
                     §§pop().scaleX = §§pop();
                     addr86:
                  }
                  return;
               }
               §§goto(addr86);
            }
         }
         §§goto(addr79);
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.§6"4§,§ !g§).height;
      }
      
      public function set height(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.§ B§ = 1;
         }
         §§push(this.height);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            if(_loc2_ == 0)
            {
               this.scaleY = 1;
               if(_loc4_ || this)
               {
                  if(!_loc4_)
                  {
                     addr69:
                     §§push(this);
                     §§push(param1);
                     if(_loc4_ || _loc2_)
                     {
                        §§push(§§pop() / _loc2_);
                     }
                     §§pop().scaleY = §§pop();
                     addr91:
                  }
                  else
                  {
                     addr65:
                  }
                  return;
               }
               §§goto(addr91);
            }
            §§goto(addr69);
         }
         §§goto(addr65);
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
               if(!_loc2_)
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
            do
            {
               this.addEventListeningObject(this,param1);
            }
            while(!_loc4_);
            
         }
      }
      
      override public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super.removeEventListener(param1,param2);
         }
         while(!hasEventListener(param1))
         {
            if(!_loc3_)
            {
               break;
            }
            addr66:
            if(_loc4_ && param2)
            {
               continue;
            }
            this.removeEventListeningObject(this,param1);
            §§goto(addr66);
         }
      }
      
      override public function removeEventListeners(param1:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:Array = §9+§();
         if(_loc7_ || _loc2_)
         {
            super.removeEventListeners(param1);
            if(!_loc6_)
            {
               §§goto(addr36);
            }
            §§goto(addr49);
         }
         addr36:
         if(param1 == null)
         {
            addr49:
            for each(_loc3_ in _loc2_)
            {
               if(_loc7_ || this)
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
      
      public function §1w§(param1:Matrix3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§0!>§);
            while(true)
            {
               §§push(0);
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           addr515:
                           while(true)
                           {
                              §§pop();
                              addr516:
                              while(true)
                              {
                                 §§push(this.§4u§);
                                 addr478:
                                 while(true)
                                 {
                                    §§push(1);
                                    addr479:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                 }
                              }
                           }
                           addr515:
                        }
                        while(true)
                        {
                           addr481:
                           while(true)
                           {
                              §§push(§§pop());
                              continue loop2;
                           }
                        }
                     }
                  }
                  §§goto(addr515);
               }
               if(_loc3_ && param1)
               {
                  continue;
               }
               §§goto(addr411);
               §§push(0);
            }
         }
         §§goto(addr350);
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.mX = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.mY = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.§@P§;
      }
      
      public function set z(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.§6"4§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr49:
                  this.§@P§ = param1;
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function get pivotX() : Number
      {
         return this.§=;§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§=;§ = param1;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§62§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§62§ = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§4u§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§4u§ = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§ B§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ B§ = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§0!>§;
      }
      
      public function set rotation(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() > Math.PI)
               {
                  loop1:
                  while(true)
                  {
                     §§push(Number(Math.ceil(param1 / (Math.PI * 2))));
                     loop2:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(param1);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(_loc2_);
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(Math.PI * 2);
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr62:
                                    §§push(Math.PI * 2);
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    addr74:
                                    §§push(§§pop() * §§pop());
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc3_)
                                       {
                                          addr79:
                                          if(_loc3_ || param1)
                                          {
                                             addr97:
                                             param1 = Number(§§pop());
                                             loop12:
                                             while(_loc3_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop1;
                                                }
                                                while(true)
                                                {
                                                   loop13:
                                                   while(true)
                                                   {
                                                      this.§0!>§ = param1;
                                                      if(!_loc3_)
                                                      {
                                                         continue loop12;
                                                      }
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            return;
                                                         }
                                                         continue loop3;
                                                      }
                                                      addr160:
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         if(!_loc4_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               §§push(_loc2_);
                                                               if(!(_loc4_ && param1))
                                                               {
                                                                  addr55:
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     §§goto(addr62);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     if(_loc4_ && param1)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     §§push(Number(Math.ceil(-param1 / (Math.PI * 2))));
                                                                     while(true)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        continue loop11;
                                                                     }
                                                                     §§goto(addr55);
                                                                  }
                                                                  addr112:
                                                               }
                                                               §§goto(addr74);
                                                            }
                                                            §§goto(addr130);
                                                         }
                                                         §§goto(addr79);
                                                      }
                                                      while(true)
                                                      {
                                                         param1 = §§pop();
                                                         break loop12;
                                                      }
                                                   }
                                                }
                                             }
                                             loop7:
                                             while(true)
                                             {
                                                addr103:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   if(!_loc4_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§goto(addr112);
                                                      §§push(-Math.PI);
                                                   }
                                                   §§goto(addr130);
                                                   continue loop7;
                                                }
                                             }
                                          }
                                          §§goto(addr160);
                                       }
                                       §§goto(addr97);
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!_loc4_)
                                       {
                                          while(_loc3_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          continue loop0;
                                          addr157:
                                       }
                                       §§goto(addr160);
                                    }
                                    addr154:
                                 }
                              }
                              §§goto(addr154);
                           }
                           §§goto(addr157);
                        }
                     }
                  }
               }
               §§goto(addr103);
            }
         }
         §§goto(addr102);
      }
      
      public function get alpha() : Number
      {
         return this.§!a§;
      }
      
      public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this);
            if(_loc3_ || _loc2_)
            {
               §§push(param1);
               if(_loc3_)
               {
                  §§push(§§pop() < 0);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           §§push(0);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc3_)
                              {
                                 addr67:
                                 if(§§pop() > 1)
                                 {
                                    addr70:
                                    §§push(Number(1));
                                    if(_loc3_)
                                    {
                                       addr74:
                                    }
                                 }
                                 else
                                 {
                                    §§push(param1);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                              }
                              §§pop().§!a§ = §§pop();
                              §§goto(addr95);
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
                     §§goto(addr74);
                  }
               }
               §§goto(addr67);
            }
            §§goto(addr70);
         }
         addr95:
      }
      
      public function get visible() : Boolean
      {
         return this.§1!'§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§1!'§ = param1;
         }
      }
      
      public function get §#b§() : Boolean
      {
         return this.§@t§;
      }
      
      public function set §#b§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§@t§ = param1;
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
         return this.§6"4§;
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
