package §!!U§
{
   import §&#H§.§%"H§;
   import §;8§.§@G§;
   import §;8§.§["T§;
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
      
      private static var §!w§:Vector.<DisplayObject>;
      
      private static var §<g§:Rectangle;
      
      private static var §#!O§:Matrix;
      
      private static var §7#2§:Matrix;
      
      protected static var §?&§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || DisplayObject)
         {
            §!w§ = new Vector.<DisplayObject>(0);
            while(true)
            {
               §<g§ = new Rectangle();
               addr51:
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               return;
               addr58:
            }
         }
         loop1:
         while(true)
         {
            §#!O§ = new Matrix();
            while(true)
            {
               §7#2§ = new Matrix();
               while(_loc1_)
               {
                  §?&§ = 0;
                  if(_loc1_ || _loc2_)
                  {
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      private var §8!+§:Number;
      
      private var §=!Z§:Number;
      
      private var §%!<§:Number;
      
      private var §=!C§:Number;
      
      private var §!!I§:Number;
      
      private var §5i§:Number;
      
      private var §<#W§:Number;
      
      private var §?!0§:Number;
      
      private var §[0§:Boolean;
      
      private var §^#"§:Boolean;
      
      private var §0"^§:Number;
      
      private var mName:String;
      
      private var §@"§:Number;
      
      private var §^#Q§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super();
            if(!_loc3_)
            {
               if(getQualifiedClassName(this) == "starling.display::DisplayObject")
               {
                  if(_loc2_ || this)
                  {
                     throw new §["T§();
                  }
               }
               §§push(this);
               §§push(this);
               §§push(this);
               §§push(this);
               §§push(this.§<#W§ = 0);
               if(!_loc3_)
               {
                  var _loc1_:*;
                  §§push(_loc1_ = §§pop());
               }
               §§pop().§=!C§ = §§pop();
               §§push(_loc1_);
               if(_loc2_)
               {
                  §§push(_loc1_ = §§pop());
               }
               §§pop().§%!<§ = §§pop();
               §§push(_loc1_);
               if(!_loc3_)
               {
                  §§push(_loc1_ = §§pop());
               }
               §§pop().§=!Z§ = §§pop();
               §§pop().§8!+§ = _loc1_;
               if(_loc2_ || _loc3_)
               {
                  addr99:
                  §§push(this);
                  §§push(this);
                  §§push(this.§?!0§ = 1);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§5i§ = §§pop();
                  §§pop().§!!I§ = _loc1_;
                  if(_loc2_ || _loc1_)
                  {
                     this.§[0§ = this.§^#"§ = true;
                     if(_loc2_ || _loc3_)
                     {
                        addr154:
                        this.§@"§ = -1;
                     }
                  }
               }
               return;
            }
            §§goto(addr154);
         }
         §§goto(addr99);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.removeEventListeners();
         }
      }
      
      public function §'H§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§^#Q§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§^#Q§);
                     addr77:
                     while(true)
                     {
                        §§pop().removeChild(this);
                        addr79:
                        while(true)
                        {
                        }
                     }
                     addr43:
                     if(!(_loc2_ || _loc3_))
                     {
                        continue;
                     }
                     while(true)
                     {
                        this.dispose();
                        addr52:
                        while(true)
                        {
                           if(!(_loc2_ || _loc3_))
                           {
                              §§goto(addr79);
                           }
                           §§goto(addr24);
                        }
                     }
                     addr50:
                  }
               }
               while(true)
               {
                  if(param1)
                  {
                     if(_loc2_)
                     {
                        §§goto(addr43);
                     }
                     §§goto(addr52);
                  }
                  break;
                  §§goto(addr79);
               }
               addr24:
               return;
            }
            §§goto(addr77);
         }
         §§goto(addr50);
      }
      
      public function §^">§(param1:DisplayObject, param2:Matrix = null) : Matrix
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(param2)
            {
               if(_loc5_)
               {
                  param2.identity();
                  if(!(_loc6_ && param1))
                  {
                     addr36:
                     if(param1 == this)
                     {
                        if(_loc5_)
                        {
                           return param2;
                        }
                        loop5:
                        while(true)
                        {
                           param2.translate(-this.§%!<§,-this.§=!C§);
                           loop6:
                           while(true)
                           {
                              §§push(this.§!!I§);
                              loop7:
                              while(true)
                              {
                                 §§push(1);
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§pop() == §§pop());
                                    loop9:
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                       loop10:
                                       while(true)
                                       {
                                          if(_loc5_ || _loc3_)
                                          {
                                             if(_loc5_ || param2)
                                             {
                                                §§push(§§pop());
                                                loop11:
                                                for(; !_loc6_; §§push(§§pop()),if(_loc6_ && _loc3_)
                                                {
                                                   continue;
                                                },if(!(_loc6_ && _loc3_))
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         §§goto(addr210);
                                                      }
                                                      §§goto(addr130);
                                                   }
                                                   break loop10;
                                                },§§goto(addr372))
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop17:
                                                         while(true)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§push(this.§5i§);
                                                               loop43:
                                                               while(true)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(1);
                                                                     if(!(_loc5_ || param2))
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     §§push(§§pop() == §§pop());
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_ && param1)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        §§push(!§§pop());
                                                                        loop23:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc5_ || _loc3_))
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           if(!_loc6_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop13:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          continue loop5;
                                                                                       }
                                                                                       param2.scale(this.§!!I§,this.§5i§);
                                                                                       loop14:
                                                                                       while(true)
                                                                                       {
                                                                                          loop35:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc5_ || this))
                                                                                             {
                                                                                                continue loop14;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§=!Z§);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   if(!(_loc6_ && this))
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         continue loop43;
                                                                                                      }
                                                                                                      §§push(0);
                                                                                                      if(_loc5_ || param2)
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                            if(_loc5_ || _loc3_)
                                                                                                            {
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     continue loop22;
                                                                                                                  }
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     continue loop16;
                                                                                                                  }
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     addr112:
                                                                                                                     §§push(!§§pop());
                                                                                                                     if(_loc5_ || this)
                                                                                                                     {
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           if(_loc5_ || this)
                                                                                                                           {
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc5_ || param1)
                                                                                                                                       {
                                                                                                                                          if(!(_loc5_ || _loc3_))
                                                                                                                                          {
                                                                                                                                             continue loop35;
                                                                                                                                          }
                                                                                                                                          param2.translate(this.§8!+§,this.§=!Z§);
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr387);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          continue loop13;
                                                                                                                                       }
                                                                                                                                       addr156:
                                                                                                                                    }
                                                                                                                                    return param2;
                                                                                                                                 }
                                                                                                                                 addr130:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    addr382:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(param1 == null);
                                                                                                                                       addr371:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          addr372:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   addr374:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§^#Q§ == null);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr373:
                                                                                                                                             }
                                                                                                                                             addr356:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr357:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      break loop13;
                                                                                                                                                   }
                                                                                                                                                   if(param1 == null)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   if(param1.§^#Q§ != this)
                                                                                                                                                   {
                                                                                                                                                      addr430:
                                                                                                                                                      §!w§.length = 0;
                                                                                                                                                      if(_loc6_ && param2)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr430);
                                                                                                                                                      }
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr442);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr450);
                                                                                                                                                      }
                                                                                                                                                      return param2;
                                                                                                                                                   }
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      param1.§^">§(this,param2);
                                                                                                                                                      if(!(_loc6_ && param2))
                                                                                                                                                      {
                                                                                                                                                         param2.invert();
                                                                                                                                                         addr450:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr442:
                                                                                                                                                         if(true)
                                                                                                                                                         {
                                                                                                                                                            var _loc3_:DisplayObject = null;
                                                                                                                                                            var _loc4_:DisplayObject = this;
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               addr470:
                                                                                                                                                               if(_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  §!w§.push(_loc4_);
                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc4_ = _loc4_.parent;
                                                                                                                                                                     §§goto(addr470);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            _loc4_ = param1;
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               addr483:
                                                                                                                                                               §§push(Boolean(_loc4_));
                                                                                                                                                               if(!(_loc6_ && this))
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        addr496:
                                                                                                                                                                        §§pop();
                                                                                                                                                                        addr517:
                                                                                                                                                                        if(!(_loc6_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§!w§.indexOf(_loc4_) == -1);
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc4_ == null)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              throw new ArgumentError("Object not connected to target");
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        _loc3_ = _loc4_;
                                                                                                                                                                        _loc4_ = this;
                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           addr562:
                                                                                                                                                                           if(_loc4_ != _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc4_.§^">§(_loc4_.§^#Q§,§#!O§);
                                                                                                                                                                              if(_loc5_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 param2.concat(§#!O§);
                                                                                                                                                                                 if(_loc5_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc4_ = _loc4_.parent;
                                                                                                                                                                                    §§goto(addr562);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr569:
                                                                                                                                                                              _loc4_ = param1;
                                                                                                                                                                              if(!(_loc6_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr597:
                                                                                                                                                                                 if(_loc4_ != _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc4_.§^">§(_loc4_.§^#Q§,§#!O§);
                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §7#2§.concat(§#!O§);
                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc4_ = _loc4_.parent;
                                                                                                                                                                                          §§goto(addr597);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr621:
                                                                                                                                                                                       param2.concat(§7#2§);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr624);
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!(_loc6_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    §7#2§.invert();
                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr621);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr624:
                                                                                                                                                                                    return param2;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr621);
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              addr567:
                                                                                                                                                                              §7#2§.identity();
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr569);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr567);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     _loc4_ = _loc4_.parent;
                                                                                                                                                                     §§goto(addr483);
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc5_ || this)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr517);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr496);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr444);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr450);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr381:
                                                                                                                              }
                                                                                                                              addr387:
                                                                                                                              _loc4_ = this;
                                                                                                                              addr406:
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 _loc4_.§^">§(_loc4_.§^#Q§,§#!O§);
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    param2.concat(§#!O§);
                                                                                                                                    _loc4_ = _loc4_.parent;
                                                                                                                                    §§goto(addr406);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              return param2;
                                                                                                                           }
                                                                                                                           §§goto(addr371);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           §§push(this.§=!C§);
                                                                                                                           addr328:
                                                                                                                           while(_loc5_ || this)
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                 addr337:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(!§§pop());
                                                                                                                                    addr338:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr373);
                                                                                                                                       }
                                                                                                                                       addr340:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             continue loop5;
                                                                                                                                          }
                                                                                                                                          continue loop6;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr360:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              addr361:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                 addr362:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(!§§pop());
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr365:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr210:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           continue loop35;
                                                                                                                        }
                                                                                                                        addr210:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     break loop11;
                                                                                                                     §§goto(addr362);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc6_ && this)
                                                                                                                     {
                                                                                                                        continue loop23;
                                                                                                                     }
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        §§push(!§§pop());
                                                                                                                        if(!(_loc6_ && param2))
                                                                                                                        {
                                                                                                                           if(!(_loc6_ && _loc3_))
                                                                                                                           {
                                                                                                                              continue loop11;
                                                                                                                           }
                                                                                                                           §§goto(addr337);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr210);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue;
                                                                                                                  addr168:
                                                                                                               }
                                                                                                               §§goto(addr362);
                                                                                                            }
                                                                                                            §§goto(addr112);
                                                                                                         }
                                                                                                         §§goto(addr336);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         loop41:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  §§goto(addr168);
                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                               }
                                                                                                               §§goto(addr361);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop() != §§pop())
                                                                                                                  {
                                                                                                                     if(!(_loc6_ && param1))
                                                                                                                     {
                                                                                                                        if(!(_loc6_ && this))
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              param2.rotate(this.§<#W§);
                                                                                                                           }
                                                                                                                           addr238:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr382);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr374);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§8!+§);
                                                                                                                     addr160:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           continue loop41;
                                                                                                                        }
                                                                                                                        continue loop7;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr223:
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr374);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                      addr222:
                                                                                                   }
                                                                                                   §§goto(addr223);
                                                                                                }
                                                                                                §§goto(addr160);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr360);
                                                                                    }
                                                                                    addr358:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr222);
                                                                                 }
                                                                              }
                                                                              addr274:
                                                                           }
                                                                           §§goto(addr357);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr328);
                                                               }
                                                            }
                                                            §§goto(addr358);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr274);
                                                }
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      §§goto(addr365);
                                                   }
                                                   §§goto(addr340);
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   break loop10;
                                                }
                                                addr379:
                                             }
                                          }
                                          §§goto(addr338);
                                       }
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§goto(addr381);
                                          }
                                          §§goto(addr356);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     else
                     {
                        §§push(param1 == this.§^#Q§);
                     }
                     §§goto(addr379);
                  }
                  §§goto(addr156);
               }
               §§goto(addr218);
            }
            else
            {
               param2 = new Matrix();
            }
            §§goto(addr36);
         }
         §§goto(addr238);
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §@G§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
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
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(this.§[0§);
                              if(!(_loc3_ && this))
                              {
                                 if(_loc3_ && this)
                                 {
                                    break;
                                 }
                                 §§push(!§§pop());
                              }
                              loop5:
                              while(!(_loc3_ && param1))
                              {
                                 §§push(§§pop());
                                 if(!_loc4_)
                                 {
                                    continue loop2;
                                 }
                                 if(!§§pop())
                                 {
                                    continue loop0;
                                 }
                                 addr76:
                                 if(!(_loc3_ && this))
                                 {
                                    addr84:
                                    §§push(!§§pop());
                                    if(_loc4_)
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                if(this.getBounds(this,§<g§).containsPoint(param1))
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(!(_loc3_ && param2))
                                                      {
                                                         if(!(_loc3_ && param2))
                                                         {
                                                            addr20:
                                                            §§push(null);
                                                            if(_loc4_)
                                                            {
                                                               return §§pop();
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr88:
                                                            if(_loc3_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            return null;
                                                         }
                                                         return §§pop();
                                                      }
                                                      continue;
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      break loop7;
                                                   }
                                                   addr140:
                                                   while(true)
                                                   {
                                                      §§push(this.§^#"§);
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         §§goto(addr76);
                                                      }
                                                      §§goto(addr84);
                                                   }
                                                }
                                                §§goto(addr20);
                                             }
                                             continue loop5;
                                          }
                                          §§goto(addr88);
                                       }
                                       return this;
                                       addr86:
                                    }
                                    continue loop0;
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                     §§goto(addr86);
                  }
               }
            }
         }
         §§goto(addr140);
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §7#2§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§^">§(_loc2_.§^#Q§,§#!O§);
            if(_loc4_ && _loc3_)
            {
               break;
            }
            §7#2§.concat(§#!O§);
            if(!_loc3_)
            {
               break;
            }
            _loc2_ = _loc2_.parent;
         }
         return §7#2§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §7#2§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(true)
         {
            if(!_loc2_)
            {
               if(_loc4_ || param1)
               {
                  addr76:
                  §7#2§.invert();
                  break;
               }
               break;
            }
            _loc2_.§^">§(_loc2_.§^#Q§,§#!O§);
            if(!_loc3_)
            {
               §7#2§.concat(§#!O§);
               if(_loc4_)
               {
                  continue;
               }
               §§goto(addr76);
            }
            break;
            §§goto(addr76);
         }
         return §7#2§.transformPoint(param1);
      }
      
      public function render(param1:§%"H§, param2:Number) : void
      {
         throw new §@G§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TouchEvent = null;
         if(_loc3_ || _loc2_)
         {
            if(param1 is TouchEvent)
            {
               if(!_loc4_)
               {
                  _loc2_ = param1 as TouchEvent;
                  addr32:
                  if(_loc3_)
                  {
                     if(_loc2_.timestamp == this.§@"§)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           return;
                        }
                        §§goto(addr83);
                     }
                     §§goto(addr83);
                  }
                  this.§@"§ = _loc2_.timestamp;
               }
               §§goto(addr83);
            }
            addr83:
            super.dispatchEvent(param1);
            return;
         }
         §§goto(addr32);
      }
      
      function §2#=§(param1:DisplayObjectContainer) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(true)
         {
            §§push(_loc2_ == this);
            if(!(_loc8_ || param1))
            {
               continue;
            }
            §§push(!§§pop());
            if(_loc7_)
            {
               continue;
            }
            if(!§§pop())
            {
               continue;
            }
            if(_loc7_ && param1)
            {
               continue;
            }
            §§pop();
            if(!_loc7_)
            {
               §§push(_loc2_ == null);
               if(!(_loc7_ && _loc3_))
               {
                  §§push(!§§pop());
               }
               continue;
            }
            addr71:
            if(_loc2_ == this)
            {
               if(!(_loc7_ && _loc2_))
               {
                  throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
               }
            }
            _loc3_ = §-"j§();
            if(_loc8_ || _loc2_)
            {
               §§push(param1 == this.§^#Q§);
               if(_loc8_ || _loc3_)
               {
                  §§push(!§§pop());
                  if(_loc8_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc8_ || _loc2_)
                     {
                        addr121:
                        §§push(§§pop());
                        if(!(_loc7_ && _loc2_))
                        {
                           if(§§pop())
                           {
                              if(!(_loc7_ && _loc3_))
                              {
                                 §§pop();
                                 if(!_loc7_)
                                 {
                                    §§push(this.§^#Q§);
                                    if(_loc8_ || param1)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc7_)
                                       {
                                          addr153:
                                          §§push(§§pop());
                                          if(!_loc7_)
                                          {
                                             addr156:
                                             if(§§pop())
                                             {
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   addr174:
                                                   §§pop();
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      §§push(_loc3_.length > 0);
                                                      if(!_loc7_)
                                                      {
                                                         addr188:
                                                         if(§§pop())
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               addr191:
                                                               §§push(0);
                                                               if(_loc8_ || param1)
                                                               {
                                                                  var _loc5_:* = §§pop();
                                                                  if(_loc8_ || _loc2_)
                                                                  {
                                                                     var _loc6_:* = _loc3_;
                                                                     if(!_loc7_)
                                                                     {
                                                                        loop1:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§hasnext(_loc6_,_loc5_));
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    if(_loc8_ || _loc2_)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          addr252:
                                                                                          this.§^#Q§ = param1;
                                                                                          if(!(_loc7_ && param1))
                                                                                          {
                                                                                             addr264:
                                                                                             §§push(Boolean(this.§^#Q§));
                                                                                             if(_loc8_ || _loc3_)
                                                                                             {
                                                                                                addr273:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc8_ || param1)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(_loc8_ || param1)
                                                                                                      {
                                                                                                         addr293:
                                                                                                         if(_loc3_.length > 0)
                                                                                                         {
                                                                                                            if(_loc8_ || _loc2_)
                                                                                                            {
                                                                                                               addr302:
                                                                                                               _loc5_ = 0;
                                                                                                               addr301:
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  addr305:
                                                                                                                  _loc6_ = _loc3_;
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     addr338:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§hasnext(_loc6_,_loc5_));
                                                                                                                        break loop1;
                                                                                                                     }
                                                                                                                     addr338:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.addEventListeningObject(this,_loc4_);
                                                                                                                     §§goto(addr338);
                                                                                                                  }
                                                                                                                  addr334:
                                                                                                               }
                                                                                                               addr342:
                                                                                                               return;
                                                                                                               addr341:
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr342);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr293);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr301);
                                                                                    }
                                                                                    §§goto(addr305);
                                                                                 }
                                                                                 addr340:
                                                                                 §§goto(addr341);
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                                 if(_loc7_ && param1)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    this.removeEventListeningObject(this,_loc4_);
                                                                                    continue loop1;
                                                                                 }
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        for(; §§pop(); §§goto(addr338))
                                                                        {
                                                                           _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                           if(_loc7_ && this)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§goto(addr334);
                                                                        }
                                                                        §§goto(addr340);
                                                                     }
                                                                     §§goto(addr226);
                                                                  }
                                                                  §§goto(addr305);
                                                               }
                                                            }
                                                            §§goto(addr302);
                                                         }
                                                         §§goto(addr252);
                                                      }
                                                   }
                                                   §§goto(addr293);
                                                }
                                             }
                                             §§goto(addr188);
                                          }
                                          §§goto(addr273);
                                       }
                                       §§goto(addr174);
                                    }
                                    §§goto(addr264);
                                 }
                                 §§goto(addr191);
                              }
                              §§goto(addr273);
                           }
                           §§goto(addr153);
                        }
                        §§goto(addr156);
                     }
                     §§goto(addr188);
                  }
                  §§goto(addr174);
               }
               §§goto(addr121);
            }
            §§goto(addr302);
         }
         if(_loc7_)
         {
         }
         §§goto(addr71);
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§^#Q§);
            if(!(_loc4_ && _loc3_))
            {
               if(!§§pop())
               {
               }
               §§goto(addr55);
            }
            §§pop().removeEventListeningObject(param1,param2);
         }
         addr55:
         if(_loc3_)
         {
            §§push(this.§^#Q§);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            §§push(this.§^#Q§);
            if(!(_loc4_ && this))
            {
               if(!§§pop())
               {
               }
               §§goto(addr60);
            }
            §§pop().addEventListeningObject(param1,param2);
         }
         addr60:
         if(!_loc4_)
         {
            §§push(this.§^#Q§);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.dispatchEvent(param1);
         }
      }
      
      public function get §3T§() : Matrix
      {
         return this.§^">§(this.§^#Q§);
      }
      
      public function get §@"&§() : Rectangle
      {
         return this.getBounds(this.§^#Q§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§^#Q§,§<g§).width;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§!!I§ = 1;
         }
         §§push(this.width);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ == 0)
            {
               this.scaleX = 1;
               if(_loc4_)
               {
                  addr58:
               }
               else
               {
                  addr86:
               }
               return;
            }
            if(_loc4_ || param1)
            {
               §§push(this);
               §§push(param1);
               if(_loc4_)
               {
                  §§push(§§pop() / _loc2_);
               }
               §§pop().scaleX = §§pop();
            }
            §§goto(addr86);
         }
         §§goto(addr58);
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.§^#Q§,§<g§).height;
      }
      
      public function set height(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§5i§ = 1;
         }
         §§push(this.height);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            if(_loc2_ == 0)
            {
               this.scaleY = 1;
               if(!_loc4_)
               {
                  addr81:
               }
               return;
            }
            if(_loc4_)
            {
               addr74:
               §§push(this);
               §§push(param1);
               if(_loc4_)
               {
                  §§push(§§pop() / _loc2_);
               }
               §§pop().scaleY = §§pop();
            }
            §§goto(addr81);
         }
         §§goto(addr74);
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
         if(!_loc3_)
         {
            super.addEventListener(param1,param2);
            do
            {
               this.addEventListeningObject(this,param1);
            }
            while(_loc3_ && _loc3_);
            
         }
      }
      
      override public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.removeEventListener(param1,param2);
            while(!hasEventListener(param1))
            {
               if(_loc3_)
               {
                  if(_loc4_)
                  {
                     continue;
                  }
                  this.removeEventListeningObject(this,param1);
               }
               break;
            }
            return;
         }
         §§goto(addr42);
      }
      
      override public function removeEventListeners(param1:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:Array = §-"j§();
         if(_loc7_ || param1)
         {
            super.removeEventListeners(param1);
            if(_loc7_)
            {
               §§goto(addr46);
            }
            §§goto(addr49);
         }
         addr46:
         if(param1 == null)
         {
            addr49:
            for each(_loc3_ in _loc2_)
            {
               if(!_loc6_)
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
      
      public function §!]§(param1:Matrix3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§<#W§);
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
                                 §§push(this.§!!I§);
                                 while(true)
                                 {
                                    §§push(1);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop51:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§push(this.§5i§);
                                                         if(_loc2_)
                                                         {
                                                            §§push(1);
                                                            loop10:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(_loc2_ || _loc3_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        §§push(this.§8!+§);
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           §§push(0);
                                                                           loop13:
                                                                           while(!_loc3_)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              loop14:
                                                                              while(!_loc3_)
                                                                              {
                                                                                 §§push(!§§pop());
                                                                                 loop15:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    loop16:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc2_ || param1))
                                                                                       {
                                                                                          continue loop51;
                                                                                       }
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          loop17:
                                                                                          for(; _loc2_; if(_loc3_ && this)
                                                                                          {
                                                                                             continue;
                                                                                          },§§goto(addr63),§§push(!§§pop()))
                                                                                          {
                                                                                             if(_loc3_ && _loc3_)
                                                                                             {
                                                                                                continue loop4;
                                                                                             }
                                                                                             §§pop();
                                                                                             loop18:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   addr462:
                                                                                                   §§push(this.§8!+§);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      break loop9;
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                §§push(this.§=!Z§);
                                                                                                loop19:
                                                                                                while(!(_loc3_ && _loc2_))
                                                                                                {
                                                                                                   continue loop0;
                                                                                                   addr197:
                                                                                                   if(!(_loc3_ && this))
                                                                                                   {
                                                                                                      §§push(1);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         loop32:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                            loop33:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(!§§pop());
                                                                                                               loop34:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  loop35:
                                                                                                                  while(_loc2_)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        loop41:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 if(!_loc2_)
                                                                                                                                 {
                                                                                                                                    continue loop18;
                                                                                                                                 }
                                                                                                                                 if(_loc2_)
                                                                                                                                 {
                                                                                                                                    param1.prependScale(this.§!!I§,this.§5i§,1);
                                                                                                                                    loop42:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr134:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§%!<§);
                                                                                                                                          loop44:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             addr138:
                                                                                                                                             addr413:
                                                                                                                                             addr186:
                                                                                                                                             loop45:
                                                                                                                                             while(_loc2_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() == §§pop());
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc2_)
                                                                                                                                                   {
                                                                                                                                                      break loop44;
                                                                                                                                                   }
                                                                                                                                                   §§push(!§§pop());
                                                                                                                                                   while(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      if(!(_loc2_ || _loc3_))
                                                                                                                                                      {
                                                                                                                                                         continue loop35;
                                                                                                                                                      }
                                                                                                                                                      if(!(_loc3_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            addr169:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop9;
                                                                                                                                                                        }
                                                                                                                                                                        param1.prependTranslation(this.§%!<§,this.§=!C§,0);
                                                                                                                                                                        addr108:
                                                                                                                                                                        if(_loc3_ && _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop42;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc2_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              addr124:
                                                                                                                                                                              if(_loc2_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr445:
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              addr404:
                                                                                                                                                                              addr496:
                                                                                                                                                                              addr352:
                                                                                                                                                                              while(_loc2_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    param1.prependTranslation(this.§8!+§,this.§=!Z§,0);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr124);
                                                                                                                                                                              }
                                                                                                                                                                              §§push(this.§=!Z§);
                                                                                                                                                                              if(!(_loc3_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§=!C§);
                                                                                                                                                                                 break loop45;
                                                                                                                                                                              }
                                                                                                                                                                              break loop18;
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              addr279:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§<#W§);
                                                                                                                                                                                 continue loop12;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr366:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              param1.prependRotation(this.§<#W§ / Math.PI * 180,Vector3D.Z_AXIS);
                                                                                                                                                                              addr323:
                                                                                                                                                                              loop29:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 addr246:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§!!I§);
                                                                                                                                                                                    continue loop29;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr312:
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§5i§);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc3_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr197);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop19;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr323);
                                                                                                                                                                        addr276:
                                                                                                                                                                     }
                                                                                                                                                                     while(!(_loc3_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop32;
                                                                                                                                                                        §§goto(addr190);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop12;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr108);
                                                                                                                                                               }
                                                                                                                                                               break;
                                                                                                                                                               addr86:
                                                                                                                                                               if(_loc2_ || this)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               addr426:
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop2;
                                                                                                                                                               }
                                                                                                                                                               addr428:
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  addr430:
                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop5;
                                                                                                                                                                  }
                                                                                                                                                                  param1.prependTranslation(this.§8!+§ + this.§%!<§,this.§=!Z§ + this.§=!C§,0);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr445);
                                                                                                                                                            }
                                                                                                                                                            addr169:
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               continue loop15;
                                                                                                                                                            }
                                                                                                                                                            addr223:
                                                                                                                                                            while(!(_loc3_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               continue loop41;
                                                                                                                                                            }
                                                                                                                                                            continue loop34;
                                                                                                                                                         }
                                                                                                                                                         continue loop15;
                                                                                                                                                         return;
                                                                                                                                                      }
                                                                                                                                                      if(_loc3_ && param1)
                                                                                                                                                      {
                                                                                                                                                         continue loop3;
                                                                                                                                                      }
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         break loop17;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr428);
                                                                                                                                                      if(_loc3_ && param1)
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      addr72:
                                                                                                                                                      if(!(_loc2_ || _loc3_))
                                                                                                                                                      {
                                                                                                                                                         while(!_loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            §§goto(addr72);
                                                                                                                                                         }
                                                                                                                                                         continue loop8;
                                                                                                                                                         addr273:
                                                                                                                                                      }
                                                                                                                                                      if(_loc3_ && param1)
                                                                                                                                                      {
                                                                                                                                                         continue loop33;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr86);
                                                                                                                                                      §§goto(addr276);
                                                                                                                                                   }
                                                                                                                                                   while(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(!§§pop());
                                                                                                                                                      while(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr352);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr279);
                                                                                                                                                         }
                                                                                                                                                         if(_loc2_ || this)
                                                                                                                                                         {
                                                                                                                                                            continue loop17;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop14;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr487);
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                }
                                                                                                                                                §§goto(addr169);
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             §§push(this.§=!C§);
                                                                                                                                             break loop19;
                                                                                                                                             if(_loc3_ && this)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                §§push(0);
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc2_)
                                                                                                                                                   {
                                                                                                                                                      addr304:
                                                                                                                                                      while(!(_loc3_ && param1))
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() != §§pop())
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr312);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr246);
                                                                                                                                                      }
                                                                                                                                                      while(_loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() == §§pop());
                                                                                                                                                         §§goto(addr304);
                                                                                                                                                      }
                                                                                                                                                      addr304:
                                                                                                                                                      continue loop13;
                                                                                                                                                      addr342:
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() == §§pop());
                                                                                                                                                   if(_loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr48);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr63:
                                                                                                                                                      if(_loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr65);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr169);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr345);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr138);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr190);
                                                                                                                                          }
                                                                                                                                          addr222:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr223);
                                                                                                                                          }
                                                                                                                                          continue loop42;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr245:
                                                                                                                                 }
                                                                                                                                 §§goto(addr430);
                                                                                                                              }
                                                                                                                              §§goto(addr245);
                                                                                                                           }
                                                                                                                           §§goto(addr134);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr273);
                                                                                                                  }
                                                                                                                  continue loop16;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      if(!(_loc3_ && _loc2_))
                                                                                                      {
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      addr415:
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr477:
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(!(_loc3_ && this))
                                                                                                         {
                                                                                                            §§goto(addr486);
                                                                                                            §§push(!§§pop());
                                                                                                         }
                                                                                                         break loop17;
                                                                                                      }
                                                                                                      if(_loc2_ || _loc2_)
                                                                                                      {
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         break loop14;
                                                                                                      }
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr415);
                                                                                                §§push(0);
                                                                                             }
                                                                                             §§goto(addr477);
                                                                                             §§push(0);
                                                                                          }
                                                                                          §§pop();
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr350);
                                                                                       }
                                                                                       §§goto(addr496);
                                                                                    }
                                                                                    continue loop51;
                                                                                 }
                                                                              }
                                                                              §§goto(addr426);
                                                                              §§push(!§§pop());
                                                                           }
                                                                           addr468:
                                                                           if(_loc3_ && _loc2_)
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                           §§goto(addr476);
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                     }
                                                                     §§goto(addr462);
                                                                  }
                                                                  addr460:
                                                               }
                                                               §§goto(addr486);
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr468);
                                                   }
                                                   addr512:
                                                }
                                                §§goto(addr460);
                                             }
                                          }
                                          addr509:
                                       }
                                       §§goto(addr512);
                                    }
                                    if(_loc3_ && param1)
                                    {
                                       continue;
                                    }
                                    §§goto(addr304);
                                    §§push(0);
                                 }
                              }
                           }
                        }
                        §§goto(addr509);
                     }
                  }
               }
            }
         }
         §§goto(addr359);
      }
      
      public function get x() : Number
      {
         return this.§8!+§;
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§8!+§ = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.§=!Z§;
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§=!Z§ = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.§0"^§;
      }
      
      public function set z(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.§^#Q§)
            {
               if(_loc3_)
               {
                  this.§0"^§ = param1;
               }
            }
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§%!<§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§%!<§ = param1;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§=!C§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§=!C§ = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§!!I§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§!!I§ = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§5i§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§5i§ = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§<#W§;
      }
      
      public function set rotation(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         if(_loc3_ || param1)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() > Math.PI)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(Number(Math.ceil(param1 / (Math.PI * 2))));
                     loop1:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        loop10:
                        while(true)
                        {
                           if(_loc4_ && param1)
                           {
                              continue loop1;
                           }
                           §§push(-Math.PI);
                           loop11:
                           for(; _loc3_ || this; if(_loc4_ && this)
                           {
                              continue;
                           },§§push(Math.PI * 2),if(!(_loc4_ && _loc2_))
                           {
                              §§goto(addr79);
                              §§push(§§pop() * §§pop());
                           },§§goto(addr156))
                           {
                              if(!_loc4_)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    loop12:
                                    for(; !_loc4_; while(!(_loc3_ || _loc3_))
                                    {
                                       continue loop12;
                                    })
                                    {
                                       §§push(Number(Math.ceil(-param1 / (Math.PI * 2))));
                                       loop13:
                                       while(!(_loc4_ && this))
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop0;
                                          }
                                          _loc2_ = §§pop();
                                          while(true)
                                          {
                                             §§push(param1);
                                             if(!_loc4_)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop10;
                                                }
                                                addr50:
                                                if(!(_loc4_ && param1))
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc3_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   addr79:
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc3_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      addr152:
                                                      while(true)
                                                      {
                                                         §§push(Math.PI * 2);
                                                         addr156:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            break loop11;
                                                         }
                                                      }
                                                      §§goto(addr50);
                                                   }
                                                   addr151:
                                                }
                                             }
                                             if(_loc3_)
                                             {
                                                param1 = §§pop();
                                                continue loop12;
                                             }
                                             continue loop13;
                                          }
                                       }
                                       while(true)
                                       {
                                          param1 = §§pop();
                                          break loop12;
                                          §§goto(addr138);
                                       }
                                       addr138:
                                    }
                                    while(_loc3_)
                                    {
                                       while(true)
                                       {
                                          continue loop10;
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr151);
                                    }
                                    addr201:
                                 }
                                 while(true)
                                 {
                                    this.§<#W§ = param1;
                                    if(!(_loc4_ && this))
                                    {
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       §§goto(addr148);
                                    }
                                    §§goto(addr86);
                                    §§goto(addr86);
                                 }
                                 return;
                              }
                              §§goto(addr152);
                           }
                           while(true)
                           {
                              §§push(§§pop() - §§pop());
                              if(!(_loc4_ && param1))
                              {
                                 §§push(Number(§§pop()));
                              }
                              §§goto(addr166);
                           }
                        }
                     }
                  }
                  §§goto(addr201);
               }
               §§goto(addr104);
            }
         }
         §§goto(addr148);
      }
      
      public function get alpha() : Number
      {
         return this.§?!0§;
      }
      
      public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this);
            if(_loc2_ || this)
            {
               §§push(param1);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() < 0);
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || this)
                        {
                           addr61:
                           §§push(0);
                           if(!_loc3_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc3_)
                              {
                              }
                           }
                           §§goto(addr98);
                        }
                        else
                        {
                           §§goto(addr79);
                        }
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc2_ || _loc2_)
                        {
                           addr78:
                           if(§§pop() > 1)
                           {
                              addr79:
                              §§push(Number(1));
                              if(_loc3_)
                              {
                              }
                           }
                           else
                           {
                              §§push(param1);
                              if(!_loc2_)
                              {
                              }
                           }
                           §§goto(addr98);
                        }
                     }
                     addr98:
                     §§pop().§?!0§ = §§pop();
                     return;
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr78);
               }
               §§goto(addr98);
            }
            §§goto(addr61);
         }
         §§goto(addr98);
      }
      
      public function get visible() : Boolean
      {
         return this.§[0§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§[0§ = param1;
         }
      }
      
      public function get §3'§() : Boolean
      {
         return this.§^#"§;
      }
      
      public function set §3'§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§^#"§ = param1;
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
         if(!(_loc3_ && param1))
         {
            this.mName = param1;
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§^#Q§;
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
