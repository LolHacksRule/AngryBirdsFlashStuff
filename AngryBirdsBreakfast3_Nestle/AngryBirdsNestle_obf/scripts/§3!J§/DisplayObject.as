package §3!J§
{
   import §!!!§.§<@§;
   import §90§.§=3§;
   import §90§.§?!^§;
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
      
      private static var §2[§:Vector.<DisplayObject>;
      
      private static var § !=§:Rectangle;
      
      private static var §-!B§:Matrix;
      
      private static var §+!G§:Matrix;
      
      protected static var §6"#§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §2[§ = new Vector.<DisplayObject>(0);
         }
         loop0:
         while(true)
         {
            § !=§ = new Rectangle();
            loop1:
            while(true)
            {
               §-!B§ = new Matrix();
               loop2:
               do
               {
                  §+!G§ = new Matrix();
                  while(_loc2_)
                  {
                     continue loop0;
                     §6"#§ = 0;
                     if(!(_loc1_ && _loc2_))
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               while(_loc1_);
               
               return;
            }
         }
      }
      
      private var §]!B§:Number;
      
      private var §9=§:Number;
      
      private var §6!f§:Number;
      
      private var §<!C§:Number;
      
      private var §7"2§:Number;
      
      private var §!P§:Number;
      
      private var §0!-§:Number;
      
      private var §4!L§:Number;
      
      private var §6Y§:Boolean;
      
      private var §7q§:Boolean;
      
      private var §1!?§:Number;
      
      private var mName:String;
      
      private var §7!;§:Number;
      
      private var §->§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super();
            if(!(_loc2_ && _loc3_))
            {
               if(getQualifiedClassName(this) == "starling.display::DisplayObject")
               {
                  if(_loc3_)
                  {
                     throw new §?!^§();
                  }
                  §§goto(addr163);
               }
               §§goto(addr163);
            }
            §§push(this);
            §§push(this);
            §§push(this);
            §§push(this);
            §§push(this.§0!-§ = 0);
            if(_loc3_ || _loc2_)
            {
               var _loc1_:*;
               §§push(_loc1_ = §§pop());
            }
            §§pop().§<!C§ = §§pop();
            §§push(_loc1_);
            if(_loc3_ || this)
            {
               §§push(_loc1_ = §§pop());
            }
            §§pop().§6!f§ = §§pop();
            §§push(_loc1_);
            if(!(_loc2_ && this))
            {
               §§push(_loc1_ = §§pop());
            }
            §§pop().§9=§ = §§pop();
            §§pop().§]!B§ = _loc1_;
            if(!_loc2_)
            {
               §§push(this);
               §§push(this);
               §§push(this.§4!L§ = 1);
               if(!_loc2_)
               {
                  §§push(_loc1_ = §§pop());
               }
               §§pop().§!P§ = §§pop();
               §§pop().§7"2§ = _loc1_;
               if(!(_loc2_ && this))
               {
                  this.§6Y§ = this.§7q§ = true;
                  if(_loc3_ || this)
                  {
                  }
                  §§goto(addr163);
               }
            }
            this.§7!;§ = -1;
         }
         addr163:
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.removeEventListeners();
         }
      }
      
      public function §?H§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§->§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr67:
                     this.§->§.removeChild(this);
                  }
                  while(true)
                  {
                     addr41:
                     if(_loc2_)
                     {
                        this.dispose();
                     }
                     if(_loc3_)
                     {
                        continue;
                     }
                     addr34:
                     return;
                     addr47:
                  }
                  addr69:
               }
               while(true)
               {
                  if(param1)
                  {
                     §§goto(addr41);
                  }
                  break;
                  §§goto(addr69);
               }
               §§goto(addr34);
            }
            §§goto(addr67);
         }
         §§goto(addr47);
      }
      
      public function §else §(param1:DisplayObject, param2:Matrix = null) : Matrix
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(param2)
            {
               if(!_loc6_)
               {
                  param2.identity();
                  if(!_loc6_)
                  {
                     addr31:
                     if(param1 == this)
                     {
                        if(_loc5_)
                        {
                           return param2;
                        }
                        loop21:
                        while(true)
                        {
                           §§push(this.§<!C§);
                           loop22:
                           while(true)
                           {
                              §§push(0);
                              loop23:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 loop24:
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(!§§pop());
                                       loop25:
                                       while(true)
                                       {
                                          loop26:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                addr338:
                                                while(true)
                                                {
                                                   param2.translate(-this.§6!f§,-this.§<!C§);
                                                   addr346:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                addr338:
                                             }
                                             while(true)
                                             {
                                                §§push(this.§7"2§);
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(1);
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      loop5:
                                                      while(true)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            continue loop26;
                                                         }
                                                         if(_loc5_ || this)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§push(!§§pop());
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  if(!(_loc5_ || this))
                                                                  {
                                                                     continue loop24;
                                                                  }
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           loop8:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              if(_loc5_)
                                                                              {
                                                                                 if(_loc5_ || param1)
                                                                                 {
                                                                                    if(_loc6_ && param1)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(this.§!P§);
                                                                                    loop9:
                                                                                    for(; _loc5_; while(_loc5_ || _loc3_)
                                                                                    {
                                                                                       if(!(_loc6_ && param2))
                                                                                       {
                                                                                          §§goto(addr130);
                                                                                          §§push(0);
                                                                                       }
                                                                                       §§goto(addr363);
                                                                                       §§goto(addr202);
                                                                                    })
                                                                                    {
                                                                                       §§push(1);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                       §§push(§§pop() == §§pop());
                                                                                       if(!(_loc6_ && param2))
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§push(!§§pop());
                                                                                             loop10:
                                                                                             for(; _loc5_; while(true)
                                                                                             {
                                                                                                if(!(_loc5_ || this))
                                                                                                {
                                                                                                   continue loop10;
                                                                                                }
                                                                                                if(!(_loc5_ || _loc3_))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§pop();
                                                                                                §§goto(addr195);
                                                                                                §§goto(addr74);
                                                                                             },continue loop5)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         param2.scale(this.§7"2§,this.§!P§);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            addr397:
                                                                                                            var _loc4_:DisplayObject = this;
                                                                                                            addr416:
                                                                                                         }
                                                                                                         addr259:
                                                                                                         if(_loc6_ && this)
                                                                                                         {
                                                                                                            continue loop21;
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               _loc4_.§else §(_loc4_.§->§,§-!B§);
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  param2.concat(§-!B§);
                                                                                                                  _loc4_ = _loc4_.parent;
                                                                                                                  §§goto(addr416);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr203:
                                                                                                         §§push(this.§0!-§);
                                                                                                         loop12:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc6_ && param2)
                                                                                                            {
                                                                                                               continue loop22;
                                                                                                            }
                                                                                                            §§push(0);
                                                                                                            loop13:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  if(§§pop() != §§pop())
                                                                                                                  {
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        addr219:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           param2.rotate(this.§0!-§);
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              §§goto(addr397);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr219:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§6!f§);
                                                                                                                           addr363:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              break loop13;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr361:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§]!B§);
                                                                                                                     continue loop9;
                                                                                                                  }
                                                                                                               }
                                                                                                               break;
                                                                                                               addr130:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc5_ || param2)
                                                                                                                  {
                                                                                                                     if(!(_loc6_ && this))
                                                                                                                     {
                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc5_ || param2)
                                                                                                                           {
                                                                                                                              §§push(!§§pop());
                                                                                                                              continue loop6;
                                                                                                                           }
                                                                                                                           continue loop21;
                                                                                                                        }
                                                                                                                        continue loop21;
                                                                                                                        addr145:
                                                                                                                     }
                                                                                                                     continue loop23;
                                                                                                                  }
                                                                                                                  continue loop13;
                                                                                                                  addr66:
                                                                                                                  §§push(0);
                                                                                                                  if(!(_loc5_ || param2))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     §§push(!§§pop());
                                                                                                                  }
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     continue loop10;
                                                                                                                  }
                                                                                                                  if(_loc6_ && param1)
                                                                                                                  {
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     while(§§pop())
                                                                                                                     {
                                                                                                                        if(!(_loc6_ && param2))
                                                                                                                        {
                                                                                                                           addr98:
                                                                                                                           if(_loc5_ || this)
                                                                                                                           {
                                                                                                                              param2.translate(this.§]!B§,this.§9=§);
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           addr195:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc5_ || param2)
                                                                                                                              {
                                                                                                                                 §§push(this.§9=§);
                                                                                                                                 if(!(_loc5_ || param1))
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    continue loop12;
                                                                                                                                 }
                                                                                                                                 §§goto(addr66);
                                                                                                                                 addr202:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§->§ == null);
                                                                                                                                    addr352:
                                                                                                                                    addr391:
                                                                                                                                    while(!(_loc6_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             §§goto(addr361);
                                                                                                                                          }
                                                                                                                                          else if(param1 == null)
                                                                                                                                          {
                                                                                                                                             §§goto(addr397);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             if(param1.§->§ == this)
                                                                                                                                             {
                                                                                                                                                if(_loc5_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   param1.§else §(this,param2);
                                                                                                                                                   if(_loc5_)
                                                                                                                                                   {
                                                                                                                                                      param2.invert();
                                                                                                                                                      addr455:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr445:
                                                                                                                                                      if(true)
                                                                                                                                                      {
                                                                                                                                                         var _loc3_:DisplayObject = null;
                                                                                                                                                         _loc4_ = this;
                                                                                                                                                         if(_loc5_ || this)
                                                                                                                                                         {
                                                                                                                                                            addr480:
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               §2[§.push(_loc4_);
                                                                                                                                                               if(!_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  addr476:
                                                                                                                                                                  _loc4_ = _loc4_.parent;
                                                                                                                                                                  §§goto(addr480);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            _loc4_ = param1;
                                                                                                                                                            if(!(_loc6_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               addr498:
                                                                                                                                                               §§push(Boolean(_loc4_));
                                                                                                                                                               if(_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc6_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        addr511:
                                                                                                                                                                        §§pop();
                                                                                                                                                                        addr522:
                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§2[§.indexOf(_loc4_) == -1);
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc4_ == null)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc5_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              throw new ArgumentError("Object not connected to target");
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        _loc3_ = _loc4_;
                                                                                                                                                                        _loc4_ = this;
                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           addr567:
                                                                                                                                                                           if(_loc4_ != _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc4_.§else §(_loc4_.§->§,§-!B§);
                                                                                                                                                                              if(_loc5_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 addr558:
                                                                                                                                                                                 param2.concat(§-!B§);
                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc4_ = _loc4_.parent;
                                                                                                                                                                                    §§goto(addr567);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr572:
                                                                                                                                                                              §+!G§.identity();
                                                                                                                                                                              _loc4_ = param1;
                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr607:
                                                                                                                                                                                 if(_loc4_ != _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc4_.§else §(_loc4_.§->§,§-!B§);
                                                                                                                                                                                    if(!(_loc6_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §+!G§.concat(§-!B§);
                                                                                                                                                                                       if(!(_loc6_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr603:
                                                                                                                                                                                          _loc4_ = _loc4_.parent;
                                                                                                                                                                                          §§goto(addr607);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr617);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr603);
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc5_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr617);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr617:
                                                                                                                                                                                 §+!G§.invert();
                                                                                                                                                                                 if(!(_loc6_ && param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    param2.concat(§+!G§);
                                                                                                                                                                                 }
                                                                                                                                                                                 return param2;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr603);
                                                                                                                                                                           }
                                                                                                                                                                           if(!_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr572);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr558);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     _loc4_ = _loc4_.parent;
                                                                                                                                                                     §§goto(addr498);
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr522);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr511);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr476);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   return param2;
                                                                                                                                                }
                                                                                                                                                addr440:
                                                                                                                                                §2[§.length = 0;
                                                                                                                                                addr452:
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   if(_loc5_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr452);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr455);
                                                                                                                                                }
                                                                                                                                                §§goto(addr445);
                                                                                                                                             }
                                                                                                                                             §§goto(addr440);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       break loop8;
                                                                                                                                       §§goto(addr352);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr384:
                                                                                                                              }
                                                                                                                              §§goto(addr98);
                                                                                                                           }
                                                                                                                           continue loop9;
                                                                                                                        }
                                                                                                                        §§goto(addr397);
                                                                                                                     }
                                                                                                                     return param2;
                                                                                                                     addr89:
                                                                                                                  }
                                                                                                                  §§goto(addr145);
                                                                                                               }
                                                                                                               continue loop23;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                               addr365:
                                                                                                               loop27:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(!§§pop());
                                                                                                                  addr366:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     addr367:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc6_ && param1))
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              continue loop21;
                                                                                                                           }
                                                                                                                           continue loop25;
                                                                                                                        }
                                                                                                                        addr390:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              §§goto(addr391);
                                                                                                                           }
                                                                                                                           §§goto(addr359);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop27;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop22;
                                                                                                         return param2;
                                                                                                      }
                                                                                                      §§goto(addr259);
                                                                                                   }
                                                                                                   §§goto(addr203);
                                                                                                }
                                                                                             }
                                                                                             continue loop8;
                                                                                             addr245:
                                                                                          }
                                                                                          §§goto(addr352);
                                                                                       }
                                                                                       §§goto(addr245);
                                                                                    }
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§goto(addr338);
                                                                              }
                                                                              §§goto(addr346);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(param1 == null);
                                                                              addr381:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 addr382:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          §§goto(addr384);
                                                                                       }
                                                                                       addr383:
                                                                                    }
                                                                                    §§goto(addr359);
                                                                                 }
                                                                              }
                                                                              §§goto(addr391);
                                                                           }
                                                                        }
                                                                        §§goto(addr247);
                                                                        addr162:
                                                                        §§push(§§pop());
                                                                        if(!(_loc5_ || param2))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(!(_loc6_ && param2))
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 §§goto(addr180);
                                                                              }
                                                                              §§goto(addr89);
                                                                           }
                                                                           §§goto(addr382);
                                                                        }
                                                                        §§goto(addr367);
                                                                     }
                                                                  }
                                                                  §§goto(addr381);
                                                               }
                                                               continue loop24;
                                                            }
                                                            addr389:
                                                            while(true)
                                                            {
                                                            }
                                                            §§goto(addr390);
                                                         }
                                                         §§goto(addr383);
                                                      }
                                                      continue loop26;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr365);
                                 }
                              }
                           }
                        }
                     }
                     else
                     {
                        §§push(param1 == this.§->§);
                     }
                     §§goto(addr389);
                  }
                  §§goto(addr338);
               }
               §§goto(addr219);
            }
            else
            {
               param2 = new Matrix();
            }
            §§goto(addr31);
         }
         §§goto(addr219);
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §=3§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
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
                              §§push(this.§6Y§);
                              loop5:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 if(_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop3;
                                    }
                                    §§push(§§pop());
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       loop7:
                                       for(; !§§pop(); continue loop0)
                                       {
                                          while(true)
                                          {
                                             if(this.getBounds(this,§ !=§).containsPoint(param1))
                                             {
                                                if(!(_loc4_ && param2))
                                                {
                                                   if(!(_loc4_ && this))
                                                   {
                                                      if(_loc3_ || param2)
                                                      {
                                                         return this;
                                                      }
                                                      break loop7;
                                                   }
                                                   if(_loc3_ || param2)
                                                   {
                                                      continue;
                                                   }
                                                   addr134:
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(this.§7q§);
                                                      if(_loc3_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               §§push(!§§pop());
                                                               continue loop7;
                                                            }
                                                            continue loop5;
                                                         }
                                                         addr116:
                                                         while(_loc3_ || param1)
                                                         {
                                                            §§pop();
                                                            continue loop9;
                                                         }
                                                         continue loop1;
                                                      }
                                                      continue loop7;
                                                   }
                                                }
                                                else if(_loc4_)
                                                {
                                                   break;
                                                }
                                             }
                                             §§push(null);
                                             if(!_loc4_)
                                             {
                                                return §§pop();
                                             }
                                             §§goto(addr90);
                                          }
                                          continue loop4;
                                       }
                                       addr87:
                                       addr90:
                                       return §§pop();
                                       §§push(null);
                                       addr87:
                                    }
                                 }
                                 §§goto(addr116);
                              }
                              continue loop2;
                           }
                        }
                     }
                     §§goto(addr87);
                  }
               }
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               §§goto(addr87);
            }
         }
         §§goto(addr134);
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §+!G§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§else §(_loc2_.§->§,§-!B§);
            if(_loc4_ && _loc2_)
            {
               break;
            }
            §+!G§.concat(§-!B§);
            if(!(_loc3_ || _loc3_))
            {
               break;
            }
            _loc2_ = _loc2_.parent;
         }
         return §+!G§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §+!G§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(true)
         {
            if(!_loc2_)
            {
               if(!(_loc4_ && _loc3_))
               {
                  break;
               }
               §§goto(addr82);
            }
            _loc2_.§else §(_loc2_.§->§,§-!B§);
            if(_loc4_ && param1)
            {
               break;
            }
            §+!G§.concat(§-!B§);
            if(!(_loc3_ || _loc3_))
            {
               break;
            }
            _loc2_ = _loc2_.parent;
         }
         §+!G§.invert();
         addr82:
         return §+!G§.transformPoint(param1);
      }
      
      public function render(param1:§<@§, param2:Number) : void
      {
         throw new §=3§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TouchEvent = null;
         if(_loc4_)
         {
            if(param1 is TouchEvent)
            {
               if(_loc4_ || _loc3_)
               {
                  _loc2_ = param1 as TouchEvent;
                  if(!(_loc3_ && this))
                  {
                     if(_loc2_.timestamp == this.§7!;§)
                     {
                        if(_loc3_)
                        {
                           §§goto(addr84);
                        }
                     }
                     else
                     {
                        this.§7!;§ = _loc2_.timestamp;
                        §§goto(addr84);
                     }
                     §§goto(addr84);
                  }
                  return;
               }
            }
            §§goto(addr84);
         }
         addr84:
         super.dispatchEvent(param1);
      }
      
      function § set§(param1:DisplayObjectContainer) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(true)
         {
            §§push(_loc2_ == this);
            if(_loc8_)
            {
               continue;
            }
            §§push(!§§pop());
            if(!_loc7_)
            {
               continue;
            }
            if(!§§pop())
            {
               continue;
            }
            if(_loc8_)
            {
               continue;
            }
            §§pop();
            if(_loc7_ || _loc2_)
            {
               §§push(_loc2_ == null);
               if(!_loc8_)
               {
                  §§push(!§§pop());
               }
               continue;
            }
            addr60:
            if(_loc2_ == this)
            {
               if(!_loc8_)
               {
                  §§goto(addr65);
               }
            }
            _loc3_ = §%"'§();
            if(_loc7_)
            {
               §§push(param1 == this.§->§);
               if(_loc7_)
               {
                  §§push(!§§pop());
                  if(_loc7_ || param1)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc7_)
                     {
                        §§push(§§pop());
                        if(!(_loc8_ && param1))
                        {
                           if(§§pop())
                           {
                              if(!_loc8_)
                              {
                                 addr106:
                                 §§pop();
                                 if(!(_loc8_ && param1))
                                 {
                                    §§push(this.§->§);
                                    if(_loc7_ || param1)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc8_)
                                       {
                                          addr127:
                                          §§push(§§pop());
                                          if(_loc7_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc7_ || param1)
                                                {
                                                   §§pop();
                                                   if(_loc7_)
                                                   {
                                                      addr141:
                                                      §§push(_loc3_.length > 0);
                                                      if(_loc7_ || param1)
                                                      {
                                                         addr162:
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc8_ && _loc2_))
                                                            {
                                                               §§push(0);
                                                               if(_loc7_)
                                                               {
                                                                  var _loc5_:* = §§pop();
                                                                  if(!_loc8_)
                                                                  {
                                                                     var _loc6_:* = _loc3_;
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                     }
                                                                     loop3:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§hasnext(_loc6_,_loc5_));
                                                                        if(!_loc8_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                              if(!(_loc8_ && param1))
                                                                              {
                                                                                 this.removeEventListeningObject(this,_loc4_);
                                                                              }
                                                                              continue;
                                                                           }
                                                                           if(!(_loc8_ && _loc2_))
                                                                           {
                                                                              if(_loc7_ || param1)
                                                                              {
                                                                                 if(_loc7_ || param1)
                                                                                 {
                                                                                    addr231:
                                                                                    this.§->§ = param1;
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       addr238:
                                                                                       §§push(Boolean(this.§->§));
                                                                                       if(!(_loc8_ && this))
                                                                                       {
                                                                                          addr246:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                             }
                                                                                             addr262:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   addr266:
                                                                                                   _loc5_ = 0;
                                                                                                   addr265:
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      _loc6_ = _loc3_;
                                                                                                      if(_loc7_ || _loc3_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§hasnext(_loc6_,_loc5_));
                                                                                                            break loop3;
                                                                                                         }
                                                                                                         addr306:
                                                                                                         return;
                                                                                                         addr302:
                                                                                                         addr305:
                                                                                                         addr304:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.addEventListeningObject(this,_loc4_);
                                                                                                         §§goto(addr302);
                                                                                                      }
                                                                                                      addr298:
                                                                                                   }
                                                                                                   §§goto(addr305);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr306);
                                                                                          }
                                                                                          §§goto(addr262);
                                                                                       }
                                                                                       §§pop();
                                                                                       if(!(_loc8_ && this))
                                                                                       {
                                                                                          addr258:
                                                                                          §§goto(addr262);
                                                                                          §§push(_loc3_.length > 0);
                                                                                       }
                                                                                       §§goto(addr265);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr306);
                                                                           }
                                                                           §§goto(addr304);
                                                                        }
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           §§goto(addr306);
                                                                        }
                                                                        else
                                                                        {
                                                                           _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                           if(!_loc7_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§goto(addr298);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr306);
                                                               }
                                                               §§goto(addr266);
                                                            }
                                                            §§goto(addr306);
                                                         }
                                                         §§goto(addr231);
                                                      }
                                                      §§goto(addr246);
                                                   }
                                                   §§goto(addr266);
                                                }
                                             }
                                             §§goto(addr162);
                                          }
                                       }
                                       §§goto(addr246);
                                    }
                                    §§goto(addr238);
                                 }
                                 §§goto(addr258);
                              }
                              §§goto(addr162);
                           }
                           §§goto(addr127);
                        }
                        §§goto(addr246);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr262);
               }
               §§goto(addr162);
            }
            §§goto(addr141);
         }
         if(_loc7_)
         {
            §§goto(addr60);
         }
         addr65:
         throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§->§);
            if(!(_loc4_ && this))
            {
               if(!§§pop())
               {
               }
               §§goto(addr60);
            }
            §§pop().removeEventListeningObject(param1,param2);
         }
         addr60:
         if(!(_loc4_ && this))
         {
            §§push(this.§->§);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§->§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(_loc4_ || this)
                  {
                     addr53:
                     this.§->§.addEventListeningObject(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr53);
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
      
      public function get §%!g§() : Matrix
      {
         return this.§else §(this.§->§);
      }
      
      public function get §4j§() : Rectangle
      {
         return this.getBounds(this.§->§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§->§,§ !=§).width;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            this.§7"2§ = 1;
         }
         §§push(this.width);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && this))
         {
            if(_loc2_ == 0)
            {
               this.scaleX = 1;
               if(!_loc4_)
               {
                  if(_loc4_ && _loc3_)
                  {
                     addr83:
                     §§push(this);
                     §§push(param1);
                     if(!_loc4_)
                     {
                        §§push(§§pop() / _loc2_);
                     }
                     §§pop().scaleX = §§pop();
                     addr90:
                  }
                  return;
               }
               §§goto(addr90);
            }
         }
         §§goto(addr83);
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.§->§,§ !=§).height;
      }
      
      public function set height(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§!P§ = 1;
         }
         §§push(this.height);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && this))
         {
            if(_loc2_ == 0)
            {
               this.scaleY = 1;
               if(_loc3_)
               {
                  if(!(_loc3_ || param1))
                  {
                     addr78:
                     §§push(this);
                     §§push(param1);
                     if(!_loc4_)
                     {
                        §§push(§§pop() / _loc2_);
                     }
                     §§pop().scaleY = §§pop();
                     addr85:
                  }
                  else
                  {
                     addr64:
                  }
                  return;
               }
               §§goto(addr85);
            }
            §§goto(addr78);
         }
         §§goto(addr64);
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
               if(!(_loc3_ && _loc2_))
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
         if(_loc4_)
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super.removeEventListener(param1,param2);
         }
         while(!hasEventListener(param1))
         {
            if(_loc4_ || _loc3_)
            {
               this.removeEventListeningObject(this,param1);
            }
            if(!(_loc3_ && _loc3_))
            {
               break;
            }
         }
      }
      
      override public function removeEventListeners(param1:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:Array = §%"'§();
         if(_loc7_ || this)
         {
            super.removeEventListeners(param1);
            if(_loc7_)
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
            if(!_loc7_)
            {
            }
         }
         else
         {
            this.removeEventListeningObject(this,param1);
         }
      }
      
      public function §3'§(param1:Matrix3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§0!-§);
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
                                 §§push(this.§7"2§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(1);
                                    addr508:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    loop69:
                                    while(true)
                                    {
                                       if(_loc3_ && _loc3_)
                                       {
                                          continue loop6;
                                       }
                                       addr480:
                                       §§push(§§pop() == 0);
                                       loop57:
                                       while(true)
                                       {
                                          if(_loc3_ && param1)
                                          {
                                             continue loop2;
                                          }
                                          §§push(!§§pop());
                                          loop58:
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                continue loop4;
                                             }
                                             §§push(§§pop());
                                             loop59:
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop60:
                                                      while(true)
                                                      {
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            §§pop();
                                                            while(true)
                                                            {
                                                               §§push(this.§9=§);
                                                               addr425:
                                                               while(true)
                                                               {
                                                                  §§push(this.§<!C§);
                                                                  addr427:
                                                                  while(true)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        while(true)
                                                                        {
                                                                           §§push(0);
                                                                           addr431:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(§§pop() == §§pop());
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr508);
                                                                              }
                                                                              addr434:
                                                                              while(true)
                                                                              {
                                                                                 §§push(!§§pop());
                                                                                 continue loop60;
                                                                              }
                                                                           }
                                                                        }
                                                                        addr430:
                                                                     }
                                                                     addr471:
                                                                     while(true)
                                                                     {
                                                                        continue loop69;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr503:
                                                         }
                                                         addr510:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            addr511:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr523:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§!P§);
                                                                        addr463:
                                                                        while(true)
                                                                        {
                                                                           §§push(1);
                                                                           addr464:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr512:
                                                               }
                                                               while(true)
                                                               {
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        §§push(this.§]!B§);
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              continue loop69;
                                                                           }
                                                                           §§push(0);
                                                                           loop18:
                                                                           for(; _loc2_ || _loc3_; while(!(_loc3_ && _loc3_))
                                                                           {
                                                                              if(§§pop() != §§pop())
                                                                              {
                                                                                 §§goto(addr337);
                                                                              }
                                                                              §§goto(addr274);
                                                                           })
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 §§push(!§§pop());
                                                                                 addr411:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    addr412:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                          }
                                                                                          addr413:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             addr379:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         param1.prependTranslation(this.§]!B§,this.§9=§,0);
                                                                                                         while(_loc2_)
                                                                                                         {
                                                                                                         }
                                                                                                         while(!(_loc3_ && param1))
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§9=§);
                                                                                                               continue loop17;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr503);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr523);
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop5;
                                                                                                   addr380:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§0!-§);
                                                                                                   addr328:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr378:
                                                                                       }
                                                                                       §§goto(addr414);
                                                                                    }
                                                                                 }
                                                                                 loop52:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc2_ || param1)
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          loop38:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                loop39:
                                                                                                while(_loc2_ || this)
                                                                                                {
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      param1.prependScale(this.§7"2§,this.§!P§,1);
                                                                                                      loop40:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            addr467:
                                                                                                            §§push(this.§]!B§);
                                                                                                            break;
                                                                                                         }
                                                                                                         loop41:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§6!f§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     break loop40;
                                                                                                                  }
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               addr188:
                                                                                                               §§push(this.§<!C§);
                                                                                                               if(_loc3_ && this)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     addr42:
                                                                                                                     §§push(0);
                                                                                                                     if(_loc2_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(!(_loc2_ || _loc3_))
                                                                                                                        {
                                                                                                                           continue loop18;
                                                                                                                        }
                                                                                                                        addr57:
                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                        if(!(_loc3_ && param1))
                                                                                                                        {
                                                                                                                           §§push(!§§pop());
                                                                                                                        }
                                                                                                                        if(!(_loc3_ && this))
                                                                                                                        {
                                                                                                                           addr161:
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              addr75:
                                                                                                                              if(!(_loc3_ && param1))
                                                                                                                              {
                                                                                                                                 if(_loc2_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc2_ || _loc3_))
                                                                                                                                    {
                                                                                                                                       continue loop58;
                                                                                                                                    }
                                                                                                                                    while(§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc2_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc2_ || param1))
                                                                                                                                          {
                                                                                                                                             addr446:
                                                                                                                                             param1.prependTranslation(this.§]!B§ + this.§6!f§,this.§9=§ + this.§<!C§,0);
                                                                                                                                             break;
                                                                                                                                             addr459:
                                                                                                                                          }
                                                                                                                                          param1.prependTranslation(this.§6!f§,this.§<!C§,0);
                                                                                                                                       }
                                                                                                                                       addr109:
                                                                                                                                       if(_loc2_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc3_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             break loop41;
                                                                                                                                          }
                                                                                                                                          continue loop39;
                                                                                                                                       }
                                                                                                                                       addr184:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr188);
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          continue loop40;
                                                                                                                                          §§goto(addr109);
                                                                                                                                       }
                                                                                                                                       §§goto(addr391);
                                                                                                                                    }
                                                                                                                                    return;
                                                                                                                                    addr91:
                                                                                                                                 }
                                                                                                                                 §§goto(addr413);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 addr295:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc3_ && param1))
                                                                                                                                    {
                                                                                                                                       if(!(_loc2_ || param1))
                                                                                                                                       {
                                                                                                                                          continue loop59;
                                                                                                                                       }
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          continue loop3;
                                                                                                                                       }
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          continue loop38;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          break loop39;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr412);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop59;
                                                                                                                                 §§goto(addr75);
                                                                                                                              }
                                                                                                                              addr294:
                                                                                                                           }
                                                                                                                           while(_loc2_ || param1)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              if(_loc2_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          continue loop52;
                                                                                                                                       }
                                                                                                                                       if(_loc2_)
                                                                                                                                       {
                                                                                                                                          if(_loc2_)
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             §§goto(addr184);
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc2_ || param1)
                                                                                                                                          {
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(!§§pop());
                                                                                                                                                continue loop52;
                                                                                                                                             }
                                                                                                                                             continue loop16;
                                                                                                                                          }
                                                                                                                                          §§goto(addr434);
                                                                                                                                       }
                                                                                                                                       §§goto(addr57);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc3_ && _loc2_)
                                                                                                                                       {
                                                                                                                                          continue loop57;
                                                                                                                                       }
                                                                                                                                       §§goto(addr378);
                                                                                                                                       §§push(!§§pop());
                                                                                                                                    }
                                                                                                                                    addr177:
                                                                                                                                    addr370:
                                                                                                                                 }
                                                                                                                                 §§goto(addr91);
                                                                                                                              }
                                                                                                                              §§goto(addr295);
                                                                                                                           }
                                                                                                                           §§goto(addr411);
                                                                                                                           addr161:
                                                                                                                        }
                                                                                                                        §§goto(addr177);
                                                                                                                     }
                                                                                                                     while(_loc2_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                        if(!(_loc3_ && _loc3_))
                                                                                                                        {
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              if(!(_loc3_ && param1))
                                                                                                                              {
                                                                                                                                 §§goto(addr161);
                                                                                                                                 §§push(!§§pop());
                                                                                                                              }
                                                                                                                              §§goto(addr379);
                                                                                                                           }
                                                                                                                           §§goto(addr312);
                                                                                                                        }
                                                                                                                        §§goto(addr161);
                                                                                                                        §§goto(addr42);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc2_ || _loc3_))
                                                                                                                        {
                                                                                                                           continue loop1;
                                                                                                                        }
                                                                                                                        §§goto(addr370);
                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                     }
                                                                                                                     addr362:
                                                                                                                     addr141:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(1);
                                                                                                                     addr278:
                                                                                                                     while(_loc2_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                        if(!(_loc3_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§goto(addr294);
                                                                                                                           §§push(!§§pop());
                                                                                                                        }
                                                                                                                        §§goto(addr312);
                                                                                                                     }
                                                                                                                     §§goto(addr431);
                                                                                                                  }
                                                                                                                  addr277:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc2_ || param1))
                                                                                                                  {
                                                                                                                     continue loop17;
                                                                                                                  }
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     §§push(1);
                                                                                                                     if(!(_loc3_ && this))
                                                                                                                     {
                                                                                                                        if(_loc3_ && param1)
                                                                                                                        {
                                                                                                                           continue loop57;
                                                                                                                        }
                                                                                                                        if(!(_loc3_ && param1))
                                                                                                                        {
                                                                                                                           §§goto(addr224);
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr464);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr278);
                                                                                                                     }
                                                                                                                     §§goto(addr434);
                                                                                                                  }
                                                                                                                  §§goto(addr430);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr425);
                                                                                                         }
                                                                                                         §§goto(addr24);
                                                                                                      }
                                                                                                      §§goto(addr471);
                                                                                                      §§push(this.§6!f§);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr380);
                                                                                                   }
                                                                                                   §§goto(addr328);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc2_ || _loc3_)
                                                                                                   {
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            §§goto(addr192);
                                                                                                            §§push(this.§!P§);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr459);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            param1.prependRotation(this.§0!-§ / Math.PI * 180,Vector3D.Z_AXIS);
                                                                                                            addr348:
                                                                                                            loop32:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr274:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr277);
                                                                                                                  continue loop32;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr337:
                                                                                                      }
                                                                                                      §§goto(addr278);
                                                                                                   }
                                                                                                   §§goto(addr348);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr124);
                                                                                          }
                                                                                          continue loop19;
                                                                                       }
                                                                                       continue loop60;
                                                                                    }
                                                                                    continue loop19;
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr427);
                                                                        }
                                                                        continue loop69;
                                                                     }
                                                                     §§goto(addr467);
                                                                  }
                                                               }
                                                            }
                                                            continue loop60;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr444);
                                                }
                                                §§goto(addr511);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr510);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr421);
      }
      
      public function get x() : Number
      {
         return this.§]!B§;
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§]!B§ = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.§9=§;
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§9=§ = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.§1!?§;
      }
      
      public function set z(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.§->§)
            {
               if(!(_loc2_ && param1))
               {
                  addr49:
                  this.§1!?§ = param1;
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function get pivotX() : Number
      {
         return this.§6!f§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§6!f§ = param1;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§<!C§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<!C§ = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§7"2§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§7"2§ = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§!P§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§!P§ = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§0!-§;
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
                           while(true)
                           {
                              §§push(_loc2_);
                              addr157:
                              addr104:
                              while(true)
                              {
                                 §§push(Math.PI * 2);
                                 addr161:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr162:
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                              addr104:
                              if(!(_loc3_ || _loc3_))
                              {
                                 continue;
                              }
                              addr112:
                              §§push(Number(§§pop()));
                              if(!_loc4_)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 param1 = §§pop();
                                 loop15:
                                 while(_loc4_ && _loc3_)
                                 {
                                    loop16:
                                    while(true)
                                    {
                                       §§push(Number(Math.ceil(-param1 / (Math.PI * 2))));
                                       loop17:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          addr144:
                                          addr179:
                                          loop14:
                                          for(; _loc3_ || _loc3_; continue loop17)
                                          {
                                             if(!_loc3_)
                                             {
                                                continue loop3;
                                             }
                                             §§push(param1);
                                             if(_loc3_ || this)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop17;
                                                }
                                                if(_loc4_)
                                                {
                                                   continue loop2;
                                                }
                                                §§push(_loc2_);
                                                if(!(_loc4_ && this))
                                                {
                                                   §§push(Math.PI * 2);
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      addr72:
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         if(_loc3_ || param1)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               §§goto(addr104);
                                                            }
                                                            §§goto(addr112);
                                                         }
                                                         §§goto(addr162);
                                                      }
                                                      while(_loc3_)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               this.§0!-§ = param1;
                                                               if(_loc3_ || this)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop14;
                                                               }
                                                               continue loop15;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr25:
                                                         }
                                                         continue loop16;
                                                         return;
                                                      }
                                                      §§goto(addr157);
                                                      addr130:
                                                   }
                                                   §§goto(addr161);
                                                }
                                                §§goto(addr72);
                                             }
                                             §§goto(addr104);
                                          }
                                          while(!_loc4_)
                                          {
                                             while(true)
                                             {
                                                §§push(param1);
                                             }
                                             §§goto(addr144);
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                                 §§goto(addr25);
                              }
                              while(true)
                              {
                                 §§goto(addr130);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr125);
            }
         }
         §§goto(addr133);
      }
      
      public function get alpha() : Number
      {
         return this.§4!L§;
      }
      
      public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this);
            if(_loc2_ || this)
            {
               §§push(param1);
               if(_loc2_)
               {
                  §§push(§§pop() < 0);
                  if(_loc2_ || param1)
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || _loc3_)
                        {
                           §§push(0);
                           if(!_loc3_)
                           {
                              §§push(Number(§§pop()));
                              if(!(_loc2_ || this))
                              {
                                 addr81:
                                 if(§§pop() > 1)
                                 {
                                    addr84:
                                    §§push(Number(1));
                                    if(_loc3_)
                                    {
                                       addr102:
                                       §§push(Number(§§pop()));
                                    }
                                    else
                                    {
                                       addr98:
                                    }
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
                              else
                              {
                                 addr72:
                              }
                              §§pop().§4!L§ = §§pop();
                              §§goto(addr104);
                           }
                           §§goto(addr72);
                        }
                        §§goto(addr84);
                     }
                     else
                     {
                        §§push(param1);
                        if(!(_loc3_ && param1))
                        {
                           §§goto(addr81);
                        }
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr81);
               }
               §§goto(addr98);
            }
            §§goto(addr84);
         }
         addr104:
      }
      
      public function get visible() : Boolean
      {
         return this.§6Y§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§6Y§ = param1;
         }
      }
      
      public function get §6!U§() : Boolean
      {
         return this.§7q§;
      }
      
      public function set §6!U§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§7q§ = param1;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.mName = param1;
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§->§;
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
