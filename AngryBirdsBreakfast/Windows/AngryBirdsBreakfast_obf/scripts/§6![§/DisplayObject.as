package §6![§
{
   import §'O§.§1,§;
   import §'O§.§`!F§;
   import §`!a§.§0L§;
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
      
      private static var §<%§:Vector.<DisplayObject>;
      
      private static var §-e§:Rectangle;
      
      private static var §7=§:Matrix;
      
      private static var §!!E§:Matrix;
      
      protected static var §#!W§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §<%§ = new Vector.<DisplayObject>(0);
            while(true)
            {
               §-e§ = new Rectangle();
               while(!(_loc1_ && _loc2_))
               {
                  §7=§ = new Matrix();
                  do
                  {
                     §!!E§ = new Matrix();
                     do
                     {
                        §#!W§ = 0;
                     }
                     while(!(_loc2_ || _loc2_));
                     
                  }
                  while(!(_loc2_ || DisplayObject));
                  
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  return;
                  addr59:
               }
            }
         }
         §§goto(addr59);
      }
      
      private var §%!3§:Number;
      
      private var §?!e§:Number;
      
      private var §=$§:Number;
      
      private var §0I§:Number;
      
      private var §`w§:Number;
      
      private var §%!;§:Number;
      
      private var §!&§:Number;
      
      private var § I§:Number;
      
      private var §3!c§:Boolean;
      
      private var §!-§:Boolean;
      
      private var §#!Q§:Number;
      
      private var mName:String;
      
      private var §,!^§:Number;
      
      private var §4-§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            if(!(_loc3_ && _loc3_))
            {
               if(getQualifiedClassName(this) == "starling.display::DisplayObject")
               {
                  if(!_loc3_)
                  {
                     throw new §1,§();
                  }
               }
               else
               {
                  addr44:
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this.§!&§ = 0);
                  if(_loc2_ || _loc1_)
                  {
                     var _loc1_:*;
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§0I§ = §§pop();
                  §§push(_loc1_);
                  if(!(_loc3_ && _loc1_))
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§=$§ = §§pop();
                  §§push(_loc1_);
                  if(_loc2_)
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§?!e§ = §§pop();
                  §§pop().§%!3§ = _loc1_;
                  if(!_loc3_)
                  {
                     §§push(this);
                     §§push(this);
                     §§push(this.§ I§ = 1);
                     if(!_loc3_)
                     {
                        §§push(_loc1_ = §§pop());
                     }
                     §§pop().§%!;§ = §§pop();
                     §§pop().§`w§ = _loc1_;
                     if(_loc2_ || _loc3_)
                     {
                        this.§3!c§ = this.§!-§ = true;
                        if(!(_loc3_ && _loc3_))
                        {
                           addr149:
                           this.§,!^§ = -1;
                        }
                        return;
                     }
                  }
               }
            }
            §§goto(addr149);
         }
         §§goto(addr44);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.removeEventListeners();
         }
      }
      
      public function §"=§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§4-§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§4-§);
                     addr72:
                     while(true)
                     {
                        §§pop().removeChild(this);
                        addr74:
                        while(true)
                        {
                        }
                     }
                     addr43:
                     if(!(_loc2_ || this))
                     {
                        continue;
                     }
                     this.dispose();
                     addr52:
                     if(!_loc2_)
                     {
                        §§goto(addr74);
                     }
                     return;
                     addr54:
                  }
               }
               while(true)
               {
                  if(param1)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        §§goto(addr43);
                     }
                     §§goto(addr52);
                  }
                  break;
                  §§goto(addr74);
               }
               §§goto(addr52);
            }
            §§goto(addr72);
         }
         §§goto(addr54);
      }
      
      public function §3!+§(param1:DisplayObject, param2:Matrix = null) : Matrix
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            if(param2)
            {
               if(!_loc5_)
               {
                  param2.identity();
                  if(!_loc5_)
                  {
                     addr37:
                     if(param1 == this)
                     {
                        if(!(_loc5_ && param1))
                        {
                           §§goto(addr47);
                        }
                        else
                        {
                           loop40:
                           while(true)
                           {
                              §§push(this.§?!e§);
                              if(_loc6_ || _loc3_)
                              {
                                 if(!_loc5_)
                                 {
                                    §§push(0);
                                    if(!_loc5_)
                                    {
                                       addr88:
                                       if(!(_loc5_ && param1))
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!(_loc5_ && param1))
                                          {
                                             if(!_loc5_)
                                             {
                                                addr106:
                                                §§push(!§§pop());
                                                if(!_loc5_)
                                                {
                                                   addr108:
                                                   if(!(_loc5_ && this))
                                                   {
                                                      loop41:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc6_ || this)
                                                            {
                                                               param2.translate(this.§%!3§,this.§?!e§);
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     §§goto(addr57);
                                                                  }
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           loop15:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§%!3§);
                                                                              addr138:
                                                                              loop16:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc6_ || _loc3_)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          while(_loc6_ || param1)
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                §§push(§§pop() == §§pop());
                                                                                                loop18:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      §§push(!§§pop());
                                                                                                      while(_loc6_)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               continue loop41;
                                                                                                            }
                                                                                                            loop20:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     addr173:
                                                                                                                     if(!(_loc5_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(!(_loc5_ && param2))
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              if(_loc6_ || this)
                                                                                                                              {
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    continue loop40;
                                                                                                                                 }
                                                                                                                                 addr288:
                                                                                                                                 loop46:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§%!;§);
                                                                                                                                    addr219:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(1);
                                                                                                                                       if(_loc6_ || param2)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() == §§pop());
                                                                                                                                          loop43:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(!§§pop());
                                                                                                                                             addr229:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr230:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         param2.scale(this.§`w§,this.§%!;§);
                                                                                                                                                      }
                                                                                                                                                      addr231:
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§!&§);
                                                                                                                                                      addr203:
                                                                                                                                                      while(_loc6_)
                                                                                                                                                      {
                                                                                                                                                         §§push(0);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() == §§pop())
                                                                                                                                                            {
                                                                                                                                                               continue loop15;
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               param2.rotate(this.§!&§);
                                                                                                                                                               continue loop14;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr88);
                                                                                                                                                         }
                                                                                                                                                         continue loop16;
                                                                                                                                                      }
                                                                                                                                                      addr241:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(1);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop43;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr228:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() == §§pop());
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             §§push(!§§pop());
                                                                                                                                             loop5:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc6_)
                                                                                                                                                {
                                                                                                                                                   if(_loc6_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      loop6:
                                                                                                                                                      while(!(_loc5_ && this))
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc5_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               addr271:
                                                                                                                                                               while(_loc6_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc6_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        continue loop46;
                                                                                                                                                                     }
                                                                                                                                                                     addr385:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        addr386:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              loop39:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 addr388:
                                                                                                                                                                                 loop37:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr371:
                                                                                                                                                                                    §§push(param1 == null);
                                                                                                                                                                                    if(param1 == null)
                                                                                                                                                                                    {
                                                                                                                                                                                       while(_loc5_ && this)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop39;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr379:
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§4-§ == null);
                                                                                                                                                                                          addr327:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc5_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                break loop37;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr372);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr379);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr372:
                                                                                                                                                                                       addr380:
                                                                                                                                                                                    }
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc5_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc5_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§=$§);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                          addr353:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() == §§pop());
                                                                                                                                                                                             break loop20;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr352:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr388);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr393);
                                                                                                                                                                              }
                                                                                                                                                                              if(param1 == null)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr393);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 if(param1.§4-§ != this)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr443:
                                                                                                                                                                                    §<%§.length = 0;
                                                                                                                                                                                    if(_loc5_ && param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr443);
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          var _loc3_:DisplayObject = null;
                                                                                                                                                                                          var _loc4_:DisplayObject = this;
                                                                                                                                                                                          if(_loc6_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr493:
                                                                                                                                                                                             if(_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §<%§.push(_loc4_);
                                                                                                                                                                                                if(!(_loc5_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc4_ = _loc4_.parent;
                                                                                                                                                                                                   §§goto(addr493);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          _loc4_ = param1;
                                                                                                                                                                                          if(!_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr506:
                                                                                                                                                                                             §§push(Boolean(_loc4_));
                                                                                                                                                                                             if(_loc6_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc5_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr522:
                                                                                                                                                                                                         if(§<%§.indexOf(_loc4_) == -1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc4_ = _loc4_.parent;
                                                                                                                                                                                                            §§goto(addr506);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!(_loc5_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc4_ == null)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc5_ && param2))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr540);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      _loc3_ = _loc4_;
                                                                                                                                                                                                      _loc4_ = this;
                                                                                                                                                                                                      if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr580:
                                                                                                                                                                                                         if(_loc4_ != _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc4_.§3!+§(_loc4_.§4-§,§7=§);
                                                                                                                                                                                                            if(!_loc5_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               param2.concat(§7=§);
                                                                                                                                                                                                               if(_loc5_ && param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr587:
                                                                                                                                                                                                               _loc4_ = param1;
                                                                                                                                                                                                               if(_loc6_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr610:
                                                                                                                                                                                                                  if(_loc4_ != _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc4_.§3!+§(_loc4_.§4-§,§7=§);
                                                                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §!!E§.concat(§7=§);
                                                                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc4_ = _loc4_.parent;
                                                                                                                                                                                                                           §§goto(addr610);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr637);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr630);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(_loc6_ || param2)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr630:
                                                                                                                                                                                                                     §!!E§.invert();
                                                                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr634:
                                                                                                                                                                                                                        param2.concat(§!!E§);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr637:
                                                                                                                                                                                                                     return param2;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr634);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            _loc4_ = _loc4_.parent;
                                                                                                                                                                                                            §§goto(addr580);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!_loc5_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §!!E§.identity();
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr587);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr522);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr540:
                                                                                                                                                                                          throw new ArgumentError("Object not connected to target");
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       addr463:
                                                                                                                                                                                    }
                                                                                                                                                                                    return param2;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!(_loc5_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    param1.§3!+§(this,param2);
                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       param2.invert();
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr463);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     break loop6;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               break loop18;
                                                                                                                                                               addr271:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr229);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr386);
                                                                                                                                                      }
                                                                                                                                                      while(!(_loc5_ && this))
                                                                                                                                                      {
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            break loop5;
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               if(_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     param2.translate(-this.§=$§,-this.§0I§);
                                                                                                                                                                     addr309:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr380);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr301:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr393);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr241);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr371);
                                                                                                                                                      addr256:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr371);
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                                §§goto(addr173);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                break loop14;
                                                                                                                                             }
                                                                                                                                             addr246:
                                                                                                                                          }
                                                                                                                                          §§goto(addr271);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr231);
                                                                                                                           }
                                                                                                                           §§goto(addr393);
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr246);
                                                                                                                  }
                                                                                                                  §§goto(addr228);
                                                                                                               }
                                                                                                               §§goto(addr230);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr355);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr256);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(!§§pop());
                                                                                                         break loop18;
                                                                                                      }
                                                                                                      addr294:
                                                                                                      addr163:
                                                                                                   }
                                                                                                   §§goto(addr271);
                                                                                                   §§goto(addr108);
                                                                                                }
                                                                                                while(_loc6_)
                                                                                                {
                                                                                                   §§goto(addr297);
                                                                                                }
                                                                                                §§goto(addr327);
                                                                                                addr160:
                                                                                             }
                                                                                             §§goto(addr353);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr294);
                                                                                          }
                                                                                          addr293:
                                                                                          addr150:
                                                                                       }
                                                                                       §§goto(addr352);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr203);
                                                                              }
                                                                              addr292:
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr293);
                                                                              }
                                                                           }
                                                                           §§goto(addr57);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr309);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr292);
                                                                  }
                                                                  §§goto(addr57);
                                                               }
                                                               addr393:
                                                               _loc4_ = this;
                                                               addr419:
                                                               if(_loc4_)
                                                               {
                                                                  _loc4_.§3!+§(_loc4_.§4-§,§7=§);
                                                                  if(!_loc5_)
                                                                  {
                                                                     param2.concat(§7=§);
                                                                     if(!(_loc5_ && param1))
                                                                     {
                                                                        _loc4_ = _loc4_.parent;
                                                                        §§goto(addr419);
                                                                     }
                                                                  }
                                                               }
                                                               return param2;
                                                            }
                                                            §§goto(addr207);
                                                         }
                                                         addr57:
                                                         return param2;
                                                      }
                                                   }
                                                   §§goto(addr160);
                                                }
                                                §§goto(addr169);
                                             }
                                             §§goto(addr163);
                                          }
                                          §§goto(addr106);
                                       }
                                       §§goto(addr206);
                                    }
                                    §§goto(addr150);
                                 }
                                 §§goto(addr219);
                              }
                              §§goto(addr138);
                           }
                        }
                     }
                     else
                     {
                        §§push(param1 == this.§4-§);
                     }
                     §§goto(addr385);
                  }
                  addr47:
                  return param2;
               }
               §§goto(addr301);
            }
            else
            {
               param2 = new Matrix();
            }
            §§goto(addr37);
         }
         §§goto(addr288);
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §`!F§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
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
                              §§push(this.§3!c§);
                              loop5:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc3_ && this)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       loop8:
                                       while(!§§pop())
                                       {
                                          while(this.getBounds(this,§-e§).containsPoint(param1))
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                return this;
                                             }
                                             if(!_loc4_)
                                             {
                                                continue;
                                             }
                                             if(_loc3_)
                                             {
                                                break loop8;
                                             }
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                if(_loc4_ || param1)
                                                {
                                                   break;
                                                }
                                                continue loop4;
                                             }
                                             addr140:
                                             while(true)
                                             {
                                                §§push(this.§!-§);
                                                if(!_loc3_)
                                                {
                                                   addr83:
                                                   if(!(_loc4_ || param2))
                                                   {
                                                      while(!_loc3_)
                                                      {
                                                         if(!(_loc3_ && param1))
                                                         {
                                                            continue loop0;
                                                         }
                                                         continue loop1;
                                                         §§goto(addr83);
                                                      }
                                                      continue loop3;
                                                      addr113:
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   §§push(!§§pop());
                                                }
                                                if(!_loc3_)
                                                {
                                                   continue loop8;
                                                }
                                                continue loop5;
                                             }
                                          }
                                          §§push(null);
                                          if(_loc4_)
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr98);
                                       }
                                       addr98:
                                       return §§pop();
                                       §§push(null);
                                       addr95:
                                    }
                                    §§goto(addr113);
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                     §§goto(addr95);
                  }
               }
            }
         }
         §§goto(addr140);
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §!!E§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§3!+§(_loc2_.§4-§,§7=§);
            if(!_loc4_)
            {
               break;
            }
            §!!E§.concat(§7=§);
            if(!(_loc4_ || _loc2_))
            {
               break;
            }
            _loc2_ = _loc2_.parent;
         }
         return §!!E§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §!!E§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(true)
         {
            if(!_loc2_)
            {
               if(_loc3_)
               {
                  break;
               }
            }
            else
            {
               _loc2_.§3!+§(_loc2_.§4-§,§7=§);
               if(!(_loc3_ || _loc3_))
               {
                  break;
               }
               §!!E§.concat(§7=§);
               if(!(_loc4_ && this))
               {
                  continue;
               }
            }
            §§goto(addr77);
         }
         §!!E§.invert();
         addr77:
         return §!!E§.transformPoint(param1);
      }
      
      public function render(param1:§0L§, param2:Number) : void
      {
         throw new §`!F§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TouchEvent = null;
         if(!(_loc4_ && _loc2_))
         {
            if(param1 is TouchEvent)
            {
               if(!_loc4_)
               {
                  _loc2_ = param1 as TouchEvent;
                  if(_loc3_ || this)
                  {
                     if(_loc2_.timestamp == this.§,!^§)
                     {
                        if(_loc3_ || param1)
                        {
                           return;
                        }
                     }
                  }
                  this.§,!^§ = _loc2_.timestamp;
               }
               §§goto(addr91);
            }
            super.dispatchEvent(param1);
         }
         addr91:
      }
      
      function §,!z§(param1:DisplayObjectContainer) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(true)
         {
            §§push(_loc2_ == this);
            if(_loc8_)
            {
               §§push(!§§pop());
               if(!_loc7_)
               {
                  if(§§pop())
                  {
                     if(!(_loc7_ && _loc2_))
                     {
                        §§pop();
                        if(_loc7_)
                        {
                           §§goto(addr76);
                        }
                        §§push(_loc2_ == null);
                        if(_loc7_ && param1)
                        {
                           continue;
                        }
                     }
                     §§push(!§§pop());
                  }
               }
            }
         }
         if(_loc8_ || _loc3_)
         {
            if(_loc2_ == this)
            {
               if(!_loc7_)
               {
                  §§goto(addr76);
               }
            }
            _loc3_ = §set §();
            if(_loc8_)
            {
               §§push(param1 == this.§4-§);
               if(!(_loc7_ && param1))
               {
                  §§push(!§§pop());
                  if(_loc8_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc7_)
                     {
                        addr106:
                        §§push(§§pop());
                        if(!_loc7_)
                        {
                           if(§§pop())
                           {
                              if(!_loc7_)
                              {
                                 §§pop();
                                 if(_loc8_ || _loc3_)
                                 {
                                    addr120:
                                    §§push(this.§4-§);
                                    if(_loc8_ || _loc2_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc8_ || _loc2_)
                                       {
                                          addr148:
                                          §§push(§§pop());
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             addr156:
                                             if(§§pop())
                                             {
                                                if(_loc8_)
                                                {
                                                   §§pop();
                                                   if(_loc8_)
                                                   {
                                                      §§push(_loc3_.length > 0);
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         addr173:
                                                         if(§§pop())
                                                         {
                                                            if(_loc8_ || _loc2_)
                                                            {
                                                               §§push(0);
                                                               if(!_loc7_)
                                                               {
                                                                  var _loc5_:* = §§pop();
                                                                  if(!_loc7_)
                                                                  {
                                                                     var _loc6_:* = _loc3_;
                                                                     if(!_loc7_)
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
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          addr222:
                                                                                          this.§4-§ = param1;
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             §§goto(addr227);
                                                                                          }
                                                                                          §§goto(addr248);
                                                                                       }
                                                                                       addr227:
                                                                                       §§push(Boolean(this.§4-§));
                                                                                       if(!(_loc7_ && _loc3_))
                                                                                       {
                                                                                          addr238:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                §§goto(addr241);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr248);
                                                                                       }
                                                                                       §§goto(addr241);
                                                                                    }
                                                                                    §§goto(addr291);
                                                                                 }
                                                                                 §§goto(addr290);
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
                                                                              if(!_loc7_)
                                                                              {
                                                                                 this.addEventListeningObject(this,_loc4_);
                                                                              }
                                                                              continue;
                                                                           }
                                                                           §§goto(addr291);
                                                                        }
                                                                     }
                                                                     §§goto(addr206);
                                                                  }
                                                                  §§goto(addr260);
                                                               }
                                                               §§goto(addr252);
                                                            }
                                                         }
                                                         §§goto(addr222);
                                                      }
                                                      §§goto(addr241);
                                                   }
                                                   §§goto(addr252);
                                                }
                                                §§goto(addr241);
                                             }
                                             §§goto(addr173);
                                          }
                                          §§goto(addr238);
                                       }
                                       §§goto(addr248);
                                    }
                                    §§goto(addr227);
                                 }
                                 §§goto(addr222);
                              }
                              §§goto(addr173);
                           }
                           §§goto(addr148);
                        }
                        §§goto(addr156);
                     }
                     addr241:
                     §§pop();
                     if(_loc8_)
                     {
                        addr248:
                        if(_loc3_.length > 0)
                        {
                           if(!_loc7_)
                           {
                              addr252:
                              _loc5_ = 0;
                              if(!(_loc7_ && param1))
                              {
                                 addr260:
                                 _loc6_ = _loc3_;
                                 if(_loc7_)
                                 {
                                 }
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc6_,_loc5_));
                                    break loop2;
                                 }
                                 addr291:
                                 addr290:
                                 addr288:
                              }
                              §§goto(addr291);
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr148);
               }
               §§goto(addr106);
            }
            §§goto(addr120);
         }
         addr76:
         throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§4-§);
            if(!(_loc4_ && this))
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr52:
                     this.§4-§.removeEventListeningObject(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr52);
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §§push(this.§4-§);
            if(_loc4_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr56);
            }
            §§pop().addEventListeningObject(param1,param2);
         }
         addr56:
         if(!_loc3_)
         {
            §§push(this.§4-§);
         }
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
      
      public function get §2>§() : Matrix
      {
         return this.§3!+§(this.§4-§);
      }
      
      public function get §5!&§() : Rectangle
      {
         return this.getBounds(this.§4-§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§4-§,§-e§).width;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§`w§ = 1;
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
               if(!(_loc4_ && this))
               {
                  addr67:
               }
               else
               {
                  addr100:
               }
               return;
            }
            if(!(_loc4_ && _loc2_))
            {
               §§push(this);
               §§push(param1);
               if(!(_loc4_ && this))
               {
                  §§push(§§pop() / _loc2_);
               }
               §§pop().scaleX = §§pop();
            }
            §§goto(addr100);
         }
         §§goto(addr67);
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.§4-§,§-e§).height;
      }
      
      public function set height(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§%!;§ = 1;
         }
         §§push(this.height);
         if(!(_loc3_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            if(_loc2_ == 0)
            {
               this.scaleY = 1;
               if(_loc4_)
               {
                  if(_loc3_)
                  {
                     addr69:
                     §§push(this);
                     §§push(param1);
                     if(_loc4_ || this)
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:DisplayObject = this;
         loop0:
         while(true)
         {
            §§push(_loc1_.parent);
            while(§§pop())
            {
               §§push(_loc1_.parent);
               if(!(_loc3_ && this))
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
         if(!(_loc3_ && _loc3_))
         {
            super.addEventListener(param1,param2);
            do
            {
               this.addEventListeningObject(this,param1);
            }
            while(_loc3_);
            
         }
      }
      
      override public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.removeEventListener(param1,param2);
            while(!hasEventListener(param1))
            {
               if(_loc4_ || param2)
               {
                  if(_loc3_)
                  {
                     continue;
                  }
                  this.removeEventListeningObject(this,param1);
               }
               break;
            }
            return;
         }
         §§goto(addr48);
      }
      
      override public function removeEventListeners(param1:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:Array = §set §();
         if(_loc6_)
         {
            super.removeEventListeners(param1);
            if(!_loc7_)
            {
               if(param1 == null)
               {
                  addr33:
                  for each(_loc3_ in _loc2_)
                  {
                     if(_loc6_)
                     {
                        this.removeEventListeningObject(this,_loc3_);
                     }
                  }
                  if(_loc7_ && _loc2_)
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
         §§goto(addr33);
      }
      
      public function §9K§(param1:Matrix3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§!&§);
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
                                 §§push(this.§`w§);
                                 while(!_loc3_)
                                 {
                                    §§push(1);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       loop54:
                                       while(true)
                                       {
                                          if(_loc3_ && param1)
                                          {
                                             continue loop7;
                                          }
                                          §§push(§§pop() == §§pop());
                                          loop12:
                                          while(true)
                                          {
                                             loop13:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   §§push(this.§%!3§);
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      loop15:
                                                      while(_loc2_)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§push(!§§pop());
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               loop18:
                                                               while(!(_loc3_ && param1))
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(_loc3_ && _loc3_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        loop25:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop26:
                                                                              while(true)
                                                                              {
                                                                                 param1.prependTranslation(this.§%!3§,this.§?!e§,0);
                                                                                 loop27:
                                                                                 while(!_loc3_)
                                                                                 {
                                                                                    if(_loc2_ || param1)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§!&§);
                                                                                          loop29:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0);
                                                                                             loop30:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                {
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(§§pop() != §§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            continue loop27;
                                                                                                         }
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            addr458:
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               addr462:
                                                                                                               §§push(this.§%!3§ + this.§=$§ != 0);
                                                                                                               §§push(this.§%!3§ + this.§=$§ != 0);
                                                                                                               break loop18;
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         param1.prependRotation(this.§!&§ / Math.PI * 180,Vector3D.Z_AXIS);
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop5;
                                                                                                      addr299:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§`w§);
                                                                                                      continue loop29;
                                                                                                      §§goto(addr314);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() == §§pop());
                                                                                                      loop23:
                                                                                                      while(!_loc3_)
                                                                                                      {
                                                                                                         §§push(!§§pop());
                                                                                                         loop24:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc3_ && _loc2_))
                                                                                                            {
                                                                                                               if(_loc2_ || _loc3_)
                                                                                                               {
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        continue loop25;
                                                                                                                     }
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                                  addr480:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     addr481:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           continue loop12;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  addr493:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§%!;§);
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        continue loop54;
                                                                                                                     }
                                                                                                                     §§goto(addr462);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            break;
                                                                                                            addr178:
                                                                                                            if(_loc3_ && _loc2_)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            loop38:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  loop39:
                                                                                                                  while(_loc2_)
                                                                                                                  {
                                                                                                                     if(!(_loc3_ && _loc2_))
                                                                                                                     {
                                                                                                                        param1.prependScale(this.§`w§,this.§%!;§,1);
                                                                                                                        loop40:
                                                                                                                        for(; _loc2_ || this; if(!(_loc2_ || param1))
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        },if(_loc3_)
                                                                                                                        {
                                                                                                                           continue loop39;
                                                                                                                        },if(_loc2_)
                                                                                                                        {
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              §§goto(addr24);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr471);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr299);
                                                                                                                        },§§goto(addr462))
                                                                                                                        {
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§=$§);
                                                                                                                                 loop42:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    addr110:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          continue loop30;
                                                                                                                                       }
                                                                                                                                       if(_loc3_ && _loc2_)
                                                                                                                                       {
                                                                                                                                          continue loop15;
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() == §§pop());
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          if(_loc2_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(!§§pop());
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                addr132:
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(!(_loc3_ && param1))
                                                                                                                                                {
                                                                                                                                                   if(_loc2_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         addr148:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                         }
                                                                                                                                                         addr148:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            addr75:
                                                                                                                                                            addr24:
                                                                                                                                                            while(§§pop())
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc2_ || _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  continue loop40;
                                                                                                                                                               }
                                                                                                                                                               if(_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  param1.prependTranslation(this.§=$§,this.§0I§,0);
                                                                                                                                                                  continue loop40;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            return;
                                                                                                                                                            addr73:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc3_)
                                                                                                                                                         {
                                                                                                                                                            continue loop42;
                                                                                                                                                         }
                                                                                                                                                         continue loop26;
                                                                                                                                                         §§goto(addr148);
                                                                                                                                                      }
                                                                                                                                                      continue loop29;
                                                                                                                                                   }
                                                                                                                                                   continue loop18;
                                                                                                                                                }
                                                                                                                                                addr266:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      addr267:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc3_ && this))
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc2_ || _loc2_))
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               break loop40;
                                                                                                                                                            }
                                                                                                                                                            continue loop16;
                                                                                                                                                         }
                                                                                                                                                         addr397:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            break loop27;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop17;
                                                                                                                                                      addr267:
                                                                                                                                                   }
                                                                                                                                                   continue loop38;
                                                                                                                                                   §§goto(addr132);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr148);
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§goto(addr148);
                                                                                                                                    }
                                                                                                                                    addr176:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc2_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr178);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(!_loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(!§§pop());
                                                                                                                                             if(_loc2_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc3_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc2_)
                                                                                                                                                      {
                                                                                                                                                         continue loop4;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr266);
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                   }
                                                                                                                                                   addr416:
                                                                                                                                                   §§push(!§§pop());
                                                                                                                                                   break loop24;
                                                                                                                                                }
                                                                                                                                                continue loop23;
                                                                                                                                             }
                                                                                                                                             §§goto(addr267);
                                                                                                                                          }
                                                                                                                                          addr470:
                                                                                                                                          §§pop();
                                                                                                                                          addr402:
                                                                                                                                          §§push(this.§?!e§);
                                                                                                                                          if(!(_loc3_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(this.§0I§);
                                                                                                                                             break loop15;
                                                                                                                                          }
                                                                                                                                          §§goto(addr462);
                                                                                                                                          addr471:
                                                                                                                                          addr234:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr106:
                                                                                                                           }
                                                                                                                           param1.prependTranslation(this.§%!3§ + this.§=$§,this.§?!e§ + this.§0I§,0);
                                                                                                                           §§goto(addr24);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr155);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr493);
                                                                                                                     }
                                                                                                                     §§goto(addr462);
                                                                                                                  }
                                                                                                                  §§goto(addr314);
                                                                                                               }
                                                                                                               §§goto(addr106);
                                                                                                            }
                                                                                                            while(_loc2_)
                                                                                                            {
                                                                                                               §§goto(addr234);
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                            }
                                                                                                            §§goto(addr415);
                                                                                                         }
                                                                                                         if(_loc2_ || this)
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               §§goto(addr462);
                                                                                                            }
                                                                                                            addr426:
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                            }
                                                                                                            §§goto(addr428);
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                   addr328:
                                                                                                }
                                                                                                §§goto(addr462);
                                                                                             }
                                                                                             continue loop1;
                                                                                          }
                                                                                       }
                                                                                       addr285:
                                                                                    }
                                                                                    §§goto(addr441);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§?!e§);
                                                                                    continue loop14;
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr285);
                                                                        }
                                                                     }
                                                                     §§goto(addr397);
                                                                  }
                                                                  §§goto(addr481);
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  §§goto(addr470);
                                                               }
                                                               §§goto(addr426);
                                                            }
                                                         }
                                                      }
                                                      if(_loc2_)
                                                      {
                                                         §§goto(addr415);
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§goto(addr462);
                                                   }
                                                }
                                                §§goto(addr458);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr480);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr493);
      }
      
      public function get x() : Number
      {
         return this.§%!3§;
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§%!3§ = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.§?!e§;
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§?!e§ = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.§#!Q§;
      }
      
      public function set z(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.§4-§)
            {
               if(!(_loc2_ && param1))
               {
                  addr49:
                  this.§#!Q§ = param1;
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function get pivotX() : Number
      {
         return this.§=$§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§=$§ = param1;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§0I§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§0I§ = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§`w§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§`w§ = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§%!;§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§%!;§ = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§!&§;
      }
      
      public function set rotation(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         if(_loc4_ || param1)
         {
            §§push(param1);
            while(true)
            {
               if(§§pop() > Math.PI)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(Number(Math.ceil(param1 / (Math.PI * 2))));
                     while(true)
                     {
                        _loc2_ = §§pop();
                     }
                     addr206:
                  }
                  while(true)
                  {
                     §§push(param1);
                     addr164:
                     while(!_loc3_)
                     {
                        §§push(_loc2_);
                        while(true)
                        {
                           §§push(Math.PI * 2);
                           addr171:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              addr172:
                              while(true)
                              {
                                 §§push(§§pop() - §§pop());
                                 addr173:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr174:
                                    while(true)
                                    {
                                       param1 = §§pop();
                                       addr175:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr206);
                  }
                  addr207:
               }
               while(true)
               {
                  §§push(param1);
                  loop11:
                  while(true)
                  {
                     §§push(-Math.PI);
                     loop12:
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           addr150:
                           while(true)
                           {
                              §§push(Number(Math.ceil(-param1 / (Math.PI * 2))));
                              loop16:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 addr161:
                                 addr142:
                                 while(true)
                                 {
                                    §§push(param1);
                                    if(_loc4_ || param1)
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop16;
                                       }
                                       if(_loc4_ || _loc3_)
                                       {
                                          if(_loc4_ || param1)
                                          {
                                             §§push(_loc2_);
                                             if(!(_loc3_ && this))
                                             {
                                                if(_loc3_ && _loc3_)
                                                {
                                                   continue loop12;
                                                }
                                                if(_loc4_)
                                                {
                                                   §§push(Math.PI * 2);
                                                   if(!_loc3_)
                                                   {
                                                      addr120:
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc3_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc3_ && param1)
                                                         {
                                                            break;
                                                         }
                                                         continue loop11;
                                                      }
                                                      §§goto(addr172);
                                                   }
                                                   §§goto(addr171);
                                                }
                                                §§goto(addr167);
                                             }
                                             §§goto(addr120);
                                          }
                                          §§goto(addr173);
                                       }
                                       §§goto(addr174);
                                    }
                                    break;
                                 }
                                 addr143:
                                 param1 = §§pop();
                              }
                           }
                           addr150:
                        }
                        while(true)
                        {
                           this.§!&§ = param1;
                           if(_loc4_ || this)
                           {
                              if(_loc4_)
                              {
                                 if(_loc4_ || _loc2_)
                                 {
                                    if(_loc4_)
                                    {
                                       if(!(_loc3_ && param1))
                                       {
                                          return;
                                       }
                                       §§goto(addr207);
                                    }
                                    §§goto(addr175);
                                 }
                                 else
                                 {
                                    §§goto(addr150);
                                 }
                              }
                              §§goto(addr161);
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr174);
                     }
                  }
               }
            }
         }
         §§goto(addr150);
      }
      
      public function get alpha() : Number
      {
         return this.§ I§;
      }
      
      public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this);
            if(_loc2_ || param1)
            {
               §§push(param1);
               if(_loc2_)
               {
                  §§push(§§pop() < 0);
                  if(_loc2_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || param1)
                        {
                           addr61:
                           §§push(0);
                           if(_loc2_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc2_ || _loc2_)
                              {
                              }
                           }
                           §§goto(addr103);
                        }
                        else
                        {
                           §§goto(addr84);
                        }
                        §§push(Number(§§pop()));
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc2_ || this)
                        {
                           addr83:
                           if(§§pop() > 1)
                           {
                              addr84:
                              §§push(Number(1));
                              if(!_loc2_)
                              {
                              }
                              §§goto(addr103);
                           }
                           else
                           {
                              §§push(param1);
                              if(!_loc3_)
                              {
                                 §§goto(addr102);
                              }
                           }
                        }
                     }
                     §§goto(addr103);
                  }
               }
               §§goto(addr83);
            }
            §§goto(addr61);
         }
         addr103:
         §§pop().§ I§ = §§pop();
      }
      
      public function get visible() : Boolean
      {
         return this.§3!c§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§3!c§ = param1;
         }
      }
      
      public function get §!!9§() : Boolean
      {
         return this.§!-§;
      }
      
      public function set §!!9§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§!-§ = param1;
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
         if(_loc3_ || _loc3_)
         {
            this.mName = param1;
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§4-§;
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
