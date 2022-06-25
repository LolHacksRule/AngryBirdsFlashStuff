package §`g§
{
   import §2m§.§@>§;
   import §[z§.§@!j§;
   import §[z§.§@F§;
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
      
      private static var §]!1§:Vector.<DisplayObject>;
      
      private static var §7y§:Rectangle;
      
      private static var §=!l§:Matrix;
      
      private static var §=3§:Matrix;
      
      protected static var §?!V§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §]!1§ = new Vector.<DisplayObject>(0);
         }
         loop0:
         while(true)
         {
            §7y§ = new Rectangle();
            loop1:
            while(true)
            {
               §=!l§ = new Matrix();
               loop2:
               while(_loc1_)
               {
                  §=3§ = new Matrix();
                  while(!_loc2_)
                  {
                     §?!V§ = 0;
                     if(_loc1_ || _loc1_)
                     {
                        if(!(_loc2_ && DisplayObject))
                        {
                           return;
                        }
                        continue loop2;
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      private var §#!!§:Number;
      
      private var §!!3§:Number;
      
      private var §1!3§:Number;
      
      private var §;V§:Number;
      
      private var §#K§:Number;
      
      private var §+`§:Number;
      
      private var §2F§:Number;
      
      private var §@5§:Number;
      
      private var § !g§:Boolean;
      
      private var §&!"§:Boolean;
      
      private var §6!e§:Number;
      
      private var mName:String;
      
      private var §`Z§:Number;
      
      private var §3I§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               if(getQualifiedClassName(this) == "starling.display::DisplayObject")
               {
                  if(!(_loc3_ && _loc1_))
                  {
                     throw new §@F§();
                  }
               }
            }
            §§push(this);
            §§push(this);
            §§push(this);
            §§push(this);
            §§push(this.§2F§ = 0);
            if(!_loc3_)
            {
               var _loc1_:*;
               §§push(_loc1_ = §§pop());
            }
            §§pop().§;V§ = §§pop();
            §§push(_loc1_);
            if(_loc2_)
            {
               §§push(_loc1_ = §§pop());
            }
            §§pop().§1!3§ = §§pop();
            §§push(_loc1_);
            if(!(_loc3_ && _loc1_))
            {
               §§push(_loc1_ = §§pop());
            }
            §§pop().§!!3§ = §§pop();
            §§pop().§#!!§ = _loc1_;
            if(_loc2_ || _loc3_)
            {
               §§push(this);
               §§push(this);
               §§push(this.§@5§ = 1);
               if(_loc2_)
               {
                  §§push(_loc1_ = §§pop());
               }
               §§pop().§+`§ = §§pop();
               §§pop().§#K§ = _loc1_;
               if(_loc2_ || this)
               {
                  addr133:
                  this.§ !g§ = this.§&!"§ = true;
                  if(!_loc3_)
                  {
                     this.§`Z§ = -1;
                  }
               }
               return;
            }
         }
         §§goto(addr133);
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
      
      public function §5&§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§3I§);
            if(_loc3_ || _loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§3I§);
                     addr78:
                     while(true)
                     {
                        §§pop().removeChild(this);
                        addr80:
                        while(true)
                        {
                        }
                     }
                  }
                  addr76:
               }
               while(param1)
               {
                  if(_loc3_ || _loc3_)
                  {
                     if(_loc3_)
                     {
                        this.dispose();
                     }
                     else
                     {
                        §§goto(addr76);
                     }
                  }
                  if(!(_loc2_ && this))
                  {
                     addr65:
                     break;
                  }
                  §§goto(addr80);
               }
               return;
            }
            §§goto(addr78);
         }
         §§goto(addr65);
      }
      
      public function §,!g§(param1:DisplayObject, param2:Matrix = null) : Matrix
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            if(param2)
            {
               if(_loc5_)
               {
                  param2.identity();
                  if(!(_loc6_ && this))
                  {
                     addr41:
                     if(param1 == this)
                     {
                        if(!_loc6_)
                        {
                           return param2;
                        }
                        loop57:
                        while(true)
                        {
                           §§push(this.§;V§);
                           addr357:
                           loop19:
                           while(!(_loc6_ && _loc3_))
                           {
                              §§push(0);
                              loop20:
                              while(_loc5_)
                              {
                                 §§push(§§pop() == §§pop());
                                 loop21:
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    loop22:
                                    while(true)
                                    {
                                       loop37:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop32:
                                             while(true)
                                             {
                                                param2.translate(-this.§1!3§,-this.§;V§);
                                                loop2:
                                                while(true)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§#K§);
                                                            loop4:
                                                            while(true)
                                                            {
                                                               §§push(1);
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  loop38:
                                                                  while(true)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     loop39:
                                                                     while(!(_loc6_ && param1))
                                                                     {
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           §§push(§§pop());
                                                                           loop40:
                                                                           while(_loc5_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 loop41:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    loop23:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          continue loop32;
                                                                                       }
                                                                                       §§push(this.§+`§);
                                                                                       loop24:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§push(1);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                   loop25:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc5_ || param2))
                                                                                                      {
                                                                                                         continue loop41;
                                                                                                      }
                                                                                                      if(!(_loc6_ && param2))
                                                                                                      {
                                                                                                         if(_loc5_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(!§§pop());
                                                                                                            loop26:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     loop28:
                                                                                                                     while(_loc5_ || param2)
                                                                                                                     {
                                                                                                                        param2.scale(this.§#K§,this.§+`§);
                                                                                                                        loop29:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           loop34:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc5_ || _loc3_))
                                                                                                                              {
                                                                                                                                 continue loop29;
                                                                                                                              }
                                                                                                                              param2.rotate(this.§2F§);
                                                                                                                              loop35:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 loop36:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§#!!§);
                                                                                                                                    loop48:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       loop45:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc5_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() == §§pop())
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   continue loop34;
                                                                                                                                                }
                                                                                                                                                continue loop20;
                                                                                                                                             }
                                                                                                                                             continue loop36;
                                                                                                                                             addr250:
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() == §§pop());
                                                                                                                                          if(_loc5_ || param2)
                                                                                                                                          {
                                                                                                                                             continue loop25;
                                                                                                                                          }
                                                                                                                                          addr178:
                                                                                                                                          loop42:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                continue loop26;
                                                                                                                                             }
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(!(_loc5_ || this))
                                                                                                                                                {
                                                                                                                                                   continue loop40;
                                                                                                                                                }
                                                                                                                                                if(!(_loc6_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   if(!(_loc6_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         loop43:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc5_ || this)
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     addr216:
                                                                                                                                                                     §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc6_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc5_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc5_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop28;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop34;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop35;
                                                                                                                                                                        §§goto(addr216);
                                                                                                                                                                     }
                                                                                                                                                                     addr238:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§!!3§);
                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(0);
                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                                                                 if(!(_loc6_ && param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(!§§pop());
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc5_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc6_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc6_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc6_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             while(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc6_ && param2))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc6_ && this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop2;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   param2.translate(this.§#!!§,this.§!!3§);
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc6_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr155:
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop23;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr217);
                                                                                                                                                                                             }
                                                                                                                                                                                             return param2;
                                                                                                                                                                                             addr124:
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop37;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop38;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop42;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop43;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop45;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop24;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop48;
                                                                                                                                                                        §§goto(addr238);
                                                                                                                                                                     }
                                                                                                                                                                     addr217:
                                                                                                                                                                     addr77:
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        addr420:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 addr422:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(param1 == null);
                                                                                                                                                                                    addr411:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       break loop40;
                                                                                                                                                                                       addr395:
                                                                                                                                                                                       while(_loc5_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(!§§pop());
                                                                                                                                                                                          break loop39;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr421:
                                                                                                                                                                           }
                                                                                                                                                                           addr389:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr419:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§1!3§);
                                                                                                                                                                     break loop19;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               if(param1 == null)
                                                                                                                                                               {
                                                                                                                                                                  var _loc4_:DisplayObject = this;
                                                                                                                                                                  while(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc4_.§,!g§(_loc4_.§3I§,§=!l§);
                                                                                                                                                                     if(!(_loc6_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        param2.concat(§=!l§);
                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     _loc4_ = _loc4_.parent;
                                                                                                                                                                  }
                                                                                                                                                                  return param2;
                                                                                                                                                               }
                                                                                                                                                               if(param1.§3I§ == this)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc5_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     param1.§,!g§(this,param2);
                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        param2.invert();
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr477);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr492);
                                                                                                                                                               }
                                                                                                                                                               addr477:
                                                                                                                                                            }
                                                                                                                                                            continue loop39;
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §]!1§.length = 0;
                                                                                                                                                               if(!_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               continue loop49;
                                                                                                                                                            }
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               if(true)
                                                                                                                                                               {
                                                                                                                                                                  var _loc3_:DisplayObject = null;
                                                                                                                                                                  _loc4_ = this;
                                                                                                                                                                  if(_loc5_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     loop51:
                                                                                                                                                                     while(_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        §]!1§.push(_loc4_);
                                                                                                                                                                        if(!(_loc5_ || param1))
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc4_ = _loc4_.parent;
                                                                                                                                                                           continue loop51;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     _loc4_ = param1;
                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Boolean(_loc4_));
                                                                                                                                                                           if(!(_loc6_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr548:
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§]!1§.indexOf(_loc4_) == -1);
                                                                                                                                                                                    }
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc4_ == null)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                       {
                                                                                                                                                                                          throw new ArgumentError("Object not connected to target");
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr548);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     _loc3_ = _loc4_;
                                                                                                                                                                     _loc4_ = this;
                                                                                                                                                                     if(!(_loc6_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc4_ == _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc5_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 addr614:
                                                                                                                                                                                 §=3§.identity();
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           _loc4_.§,!g§(_loc4_.§3I§,§=!l§);
                                                                                                                                                                           if(_loc5_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              param2.concat(§=!l§);
                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr614);
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        _loc4_ = param1;
                                                                                                                                                                        if(!(_loc6_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc4_ == _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 _loc4_.§,!g§(_loc4_.§3I§,§=!l§);
                                                                                                                                                                                 if(!(_loc5_ || param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 §=3§.concat(§=!l§);
                                                                                                                                                                                 if(!(_loc6_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr678:
                                                                                                                                                                                 param2.concat(§=3§);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr681);
                                                                                                                                                                           }
                                                                                                                                                                           §=3§.invert();
                                                                                                                                                                           if(_loc5_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr678);
                                                                                                                                                                           }
                                                                                                                                                                           addr681:
                                                                                                                                                                           return param2;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr678);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr614);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr518);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr492:
                                                                                                                                                            }
                                                                                                                                                            return param2;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr124);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr420);
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      continue loop22;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      continue loop57;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                break loop28;
                                                                                                                                             }
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
                                                                                                                        §§goto(addr389);
                                                                                                                     }
                                                                                                                     addr414:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§2F§);
                                                                                                                     continue loop24;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr421);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr405);
                                                                                                   }
                                                                                                   continue loop41;
                                                                                                }
                                                                                                continue loop5;
                                                                                             }
                                                                                             continue loop19;
                                                                                          }
                                                                                          continue loop4;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr300);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 §§goto(addr413);
                                                                              }
                                                                              §§goto(addr389);
                                                                              §§goto(addr411);
                                                                           }
                                                                        }
                                                                        §§goto(addr395);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr404);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr316:
                                                      }
                                                      §§goto(addr422);
                                                   }
                                                   §§goto(addr391);
                                                }
                                             }
                                          }
                                          §§goto(addr316);
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr395);
                              }
                           }
                           while(true)
                           {
                              §§goto(addr394);
                              §§goto(addr357);
                           }
                        }
                     }
                     else
                     {
                        §§push(param1 == this.§3I§);
                     }
                     §§goto(addr419);
                  }
                  §§goto(addr155);
               }
               else if(false)
               {
                  §§goto(addr77);
               }
               §§goto(addr424);
            }
            else
            {
               param2 = new Matrix();
            }
            §§goto(addr41);
         }
         §§goto(addr414);
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §@!j§("Method needs to be implemented in subclass");
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
                  addr123:
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
                              §§push(this.§ !g§);
                              if(_loc3_)
                              {
                                 continue loop0;
                              }
                              addr118:
                              while(true)
                              {
                                 §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.§&!"§);
                                    if(!_loc4_)
                                    {
                                       §§push(!§§pop());
                                    }
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    if(_loc3_)
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                return null;
                                             }
                                             else
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   while(true)
                                                   {
                                                      addr26:
                                                      while(this.getBounds(this,§7y§).containsPoint(param1))
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            if(!(_loc4_ && param2))
                                                            {
                                                               break loop7;
                                                            }
                                                            continue loop6;
                                                         }
                                                         continue loop8;
                                                      }
                                                      §§push(null);
                                                      if(_loc3_)
                                                      {
                                                         return §§pop();
                                                      }
                                                   }
                                                }
                                             }
                                             return §§pop();
                                          }
                                          §§goto(addr26);
                                       }
                                       return this;
                                       addr68:
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           continue loop0;
                        }
                        addr124:
                     }
                     §§goto(addr68);
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §=3§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§,!g§(_loc2_.§3I§,§=!l§);
            if(!(_loc4_ && _loc3_))
            {
               §=3§.concat(§=!l§);
               if(!(_loc3_ || _loc3_))
               {
                  break;
               }
            }
            _loc2_ = _loc2_.parent;
         }
         return §=3§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §=3§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(true)
         {
            if(!_loc2_)
            {
               if(!(_loc3_ && this))
               {
                  break;
               }
               §§goto(addr78);
            }
            _loc2_.§,!g§(_loc2_.§3I§,§=!l§);
            if(!(_loc3_ && _loc3_))
            {
               §=3§.concat(§=!l§);
               if(!_loc4_)
               {
                  break;
               }
            }
            _loc2_ = _loc2_.parent;
         }
         §=3§.invert();
         addr78:
         return §=3§.transformPoint(param1);
      }
      
      public function render(param1:§@>§, param2:Number) : void
      {
         throw new §@!j§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TouchEvent = null;
         if(!(_loc4_ && param1))
         {
            if(param1 is TouchEvent)
            {
               if(!_loc4_)
               {
                  _loc2_ = param1 as TouchEvent;
                  if(!(_loc4_ && _loc2_))
                  {
                     if(_loc2_.timestamp == this.§`Z§)
                     {
                        if(_loc3_)
                        {
                           return;
                        }
                     }
                     this.§`Z§ = _loc2_.timestamp;
                  }
               }
               §§goto(addr86);
            }
            super.dispatchEvent(param1);
         }
         addr86:
      }
      
      function §"!d§(param1:DisplayObjectContainer) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(true)
         {
            §§push(_loc2_ == this);
            if(_loc7_)
            {
               §§push(!§§pop());
               if(_loc7_)
               {
                  if(§§pop())
                  {
                     if(_loc7_ || this)
                     {
                        §§pop();
                        if(!(_loc8_ && _loc3_))
                        {
                           §§push(_loc2_ == null);
                           if(!(_loc7_ || _loc3_))
                           {
                              continue;
                           }
                        }
                        else
                        {
                           addr75:
                           if(_loc2_ == this)
                           {
                              if(_loc7_)
                              {
                                 throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
                              }
                           }
                           _loc3_ = §@O§();
                           if(_loc7_ || _loc3_)
                           {
                              §§push(param1 == this.§3I§);
                              if(_loc7_)
                              {
                                 §§push(!§§pop());
                                 if(!(_loc8_ && this))
                                 {
                                    addr111:
                                    §§push(Boolean(§§pop()));
                                    if(!_loc8_)
                                    {
                                       §§push(§§pop());
                                       if(!(_loc8_ && _loc2_))
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc8_ && _loc2_))
                                             {
                                                §§pop();
                                                if(!(_loc8_ && _loc3_))
                                                {
                                                   addr139:
                                                   §§push(this.§3I§);
                                                   if(_loc7_ || this)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(!(_loc8_ && _loc2_))
                                                      {
                                                         addr167:
                                                         §§push(§§pop());
                                                         if(_loc7_)
                                                         {
                                                            addr170:
                                                            if(§§pop())
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  addr173:
                                                                  §§pop();
                                                                  if(_loc7_ || param1)
                                                                  {
                                                                     §§push(_loc3_.length > 0);
                                                                     if(_loc7_)
                                                                     {
                                                                        addr187:
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§push(0);
                                                                              if(!(_loc8_ && _loc3_))
                                                                              {
                                                                                 var _loc5_:* = §§pop();
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    var _loc6_:* = _loc3_;
                                                                                    if(_loc8_)
                                                                                    {
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§hasnext(_loc6_,_loc5_));
                                                                                       if(!(_loc8_ && _loc2_))
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                                             if(_loc7_ || _loc3_)
                                                                                             {
                                                                                                this.removeEventListeningObject(this,_loc4_);
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             if(_loc7_ || this)
                                                                                             {
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   addr246:
                                                                                                   this.§3I§ = param1;
                                                                                                   if(!(_loc8_ && _loc3_))
                                                                                                   {
                                                                                                      addr256:
                                                                                                      §§push(Boolean(this.§3I§));
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         addr261:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               §§goto(addr265);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr272);
                                                                                                   }
                                                                                                   §§goto(addr280);
                                                                                                }
                                                                                                §§goto(addr256);
                                                                                             }
                                                                                             §§goto(addr294);
                                                                                          }
                                                                                          §§goto(addr280);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    while(§§pop())
                                                                                    {
                                                                                       _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          this.addEventListeningObject(this,_loc4_);
                                                                                       }
                                                                                       §§goto(addr317);
                                                                                    }
                                                                                    §§goto(addr319);
                                                                                 }
                                                                                 §§goto(addr294);
                                                                              }
                                                                           }
                                                                           §§goto(addr281);
                                                                        }
                                                                        §§goto(addr246);
                                                                     }
                                                                     §§goto(addr272);
                                                                  }
                                                                  §§goto(addr256);
                                                               }
                                                               §§goto(addr261);
                                                            }
                                                            §§goto(addr187);
                                                         }
                                                         §§goto(addr261);
                                                      }
                                                      §§goto(addr272);
                                                   }
                                                }
                                                §§goto(addr256);
                                             }
                                             addr265:
                                             §§pop();
                                             if(_loc7_)
                                             {
                                                addr272:
                                                if(_loc3_.length > 0)
                                                {
                                                   if(!(_loc8_ && _loc3_))
                                                   {
                                                      addr281:
                                                      _loc5_ = 0;
                                                      addr280:
                                                      if(!_loc8_)
                                                      {
                                                         addr294:
                                                         _loc6_ = _loc3_;
                                                         if(_loc7_ || _loc3_)
                                                         {
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§hasnext(_loc6_,_loc5_));
                                                            break loop1;
                                                         }
                                                         addr317:
                                                      }
                                                   }
                                                }
                                             }
                                             return;
                                          }
                                          §§goto(addr167);
                                       }
                                       §§goto(addr170);
                                    }
                                    §§goto(addr187);
                                 }
                                 §§goto(addr173);
                              }
                              §§goto(addr111);
                           }
                           §§goto(addr139);
                        }
                     }
                     §§push(!§§pop());
                  }
               }
            }
         }
         if(_loc7_ || _loc2_)
         {
         }
         §§goto(addr75);
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§3I§);
            if(_loc4_ || this)
            {
               if(!§§pop())
               {
               }
               §§goto(addr56);
            }
            §§pop().removeEventListeningObject(param1,param2);
         }
         addr56:
         if(_loc4_ || _loc3_)
         {
            §§push(this.§3I§);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§3I§);
            if(!(_loc4_ && param1))
            {
               if(!§§pop())
               {
               }
               §§goto(addr50);
            }
            §§pop().addEventListeningObject(param1,param2);
         }
         addr50:
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§3I§);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.dispatchEvent(param1);
         }
      }
      
      public function get §[!O§() : Matrix
      {
         return this.§,!g§(this.§3I§);
      }
      
      public function get §`b§() : Rectangle
      {
         return this.getBounds(this.§3I§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§3I§,§7y§).width;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§#K§ = 1;
         }
         §§push(this.width);
         if(_loc4_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && param1))
         {
            if(_loc2_ == 0)
            {
               this.scaleX = 1;
               if(_loc4_ || _loc2_)
               {
                  if(_loc3_)
                  {
                     addr84:
                     §§push(this);
                     §§push(param1);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop() / _loc2_);
                     }
                     §§pop().scaleX = §§pop();
                     addr96:
                  }
                  return;
               }
               §§goto(addr96);
            }
         }
         §§goto(addr84);
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.§3I§,§7y§).height;
      }
      
      public function set height(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§+`§ = 1;
         }
         §§push(this.height);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            if(_loc2_ == 0)
            {
               this.scaleY = 1;
               if(_loc3_)
               {
                  if(!(_loc3_ || _loc3_))
                  {
                     addr73:
                     §§push(this);
                     §§push(param1);
                     if(!_loc4_)
                     {
                        §§push(§§pop() / _loc2_);
                     }
                     §§pop().scaleY = §§pop();
                     addr80:
                  }
                  return;
               }
               §§goto(addr80);
            }
         }
         §§goto(addr73);
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
               if(_loc2_ || _loc3_)
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
         if(!(_loc3_ && param2))
         {
            super.addEventListener(param1,param2);
         }
         do
         {
            this.addEventListeningObject(this,param1);
         }
         while(_loc3_ && param1);
         
      }
      
      override public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.removeEventListener(param1,param2);
         }
         while(!hasEventListener(param1))
         {
            if(!(_loc3_ && param2))
            {
               this.removeEventListeningObject(this,param1);
            }
            if(_loc4_ || param2)
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
         var _loc2_:Array = §@O§();
         if(!_loc6_)
         {
            super.removeEventListeners(param1);
            if(_loc7_)
            {
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
                  if(!_loc7_)
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
         §§goto(addr44);
      }
      
      public function §0!"§(param1:Matrix3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§2F§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
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
                              addr517:
                              while(true)
                              {
                                 §§push(this.§#K§);
                                 addr503:
                                 while(true)
                                 {
                                    §§push(1);
                                    addr504:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                 }
                              }
                           }
                           addr516:
                        }
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              §§push(§§pop());
                              loop7:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr509:
                                       while(true)
                                       {
                                          §§push(this.§+`§);
                                          addr456:
                                          while(true)
                                          {
                                             §§push(1);
                                             addr457:
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                             }
                                          }
                                       }
                                    }
                                    addr508:
                                 }
                                 while(true)
                                 {
                                    loop13:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          addr465:
                                          §§push(this.§#!!§ + this.§1!3§ == 0);
                                       }
                                       else
                                       {
                                          §§push(this.§#!!§);
                                          loop14:
                                          while(true)
                                          {
                                             §§push(0);
                                             loop15:
                                             while(_loc3_ || _loc3_)
                                             {
                                                §§push(§§pop() == §§pop());
                                                loop16:
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   loop51:
                                                   while(true)
                                                   {
                                                      if(_loc3_ || param1)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         §§pop();
                                                         loop52:
                                                         while(true)
                                                         {
                                                            if(!(_loc2_ && this))
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        addr189:
                                                                        §§push(this.§;V§);
                                                                        if(_loc3_)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              addr31:
                                                                              §§push(0);
                                                                              if(_loc3_ || param1)
                                                                              {
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(!(_loc2_ && _loc2_))
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       continue loop51;
                                                                                    }
                                                                                    §§push(!§§pop());
                                                                                 }
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                loop53:
                                                                                                while(§§pop())
                                                                                                {
                                                                                                   if(_loc2_ && _loc3_)
                                                                                                   {
                                                                                                      continue loop52;
                                                                                                   }
                                                                                                   if(_loc3_ || _loc2_)
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         if(_loc3_ || _loc2_)
                                                                                                         {
                                                                                                            param1.prependTranslation(this.§1!3§,this.§;V§,0);
                                                                                                            continue loop52;
                                                                                                         }
                                                                                                         §§goto(addr517);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         loop26:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            param1.prependTranslation(this.§#!!§,this.§!!3§,0);
                                                                                                            loop27:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               loop28:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§2F§);
                                                                                                                  addr309:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           loop30:
                                                                                                                           while(!(_loc2_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(§§pop() != §§pop())
                                                                                                                              {
                                                                                                                                 loop31:
                                                                                                                                 while(_loc3_ || this)
                                                                                                                                 {
                                                                                                                                    param1.prependRotation(this.§2F§ / Math.PI * 180,Vector3D.Z_AXIS);
                                                                                                                                    loop32:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr226:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§#K§);
                                                                                                                                          loop34:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(1);
                                                                                                                                             addr230:
                                                                                                                                             addr426:
                                                                                                                                             loop35:
                                                                                                                                             while(_loc3_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                if(_loc3_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   if(_loc3_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() == §§pop());
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc3_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§push(!§§pop());
                                                                                                                                                            loop37:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               addr271:
                                                                                                                                                               addr471:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc3_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc2_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           loop44:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    param1.prependScale(this.§#K§,this.§+`§,1);
                                                                                                                                                                                    addr225:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr218:
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§1!3§);
                                                                                                                                                                                 addr112:
                                                                                                                                                                                 loop48:
                                                                                                                                                                                 while(!_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr114:
                                                                                                                                                                                    if(!(_loc2_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc3_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc2_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() == §§pop());
                                                                                                                                                                                                      if(!_loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr146:
                                                                                                                                                                                                            §§push(!§§pop());
                                                                                                                                                                                                            while(_loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop37;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr146:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr206:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc2_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop44;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr286:
                                                                                                                                                                                                            addr366:
                                                                                                                                                                                                            while(_loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                               loop40:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc2_ && _loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop27;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!(_loc2_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§+`§);
                                                                                                                                                                                                                        break loop48;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr452:
                                                                                                                                                                                                                     addr375:
                                                                                                                                                                                                                     break loop53;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr409:
                                                                                                                                                                                                                  addr101:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.§!!3§);
                                                                                                                                                                                                                     break loop40;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(_loc3_ || _loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break loop44;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc3_ || _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop0;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr465);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop14;
                                                                                                                                                                                                                  §§goto(addr114);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break loop35;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop26;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop28;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr427:
                                                                                                                                                                                                         §§push(!§§pop());
                                                                                                                                                                                                         break loop51;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr146);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop15;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop30;
                                                                                                                                                                                             §§goto(addr31);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr422:
                                                                                                                                                                                          if(!_loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr425);
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          addr129:
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr465);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr465);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr344);
                                                                                                                                                                                    §§goto(addr189);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop34;
                                                                                                                                                                                 §§goto(addr225);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           break loop53;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr286);
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  addr407:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                           §§goto(addr409);
                                                                                                                                                                        }
                                                                                                                                                                        addr408:
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                        addr365:
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr366);
                                                                                                                                                               }
                                                                                                                                                               if(!(_loc3_ || _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  continue loop7;
                                                                                                                                                               }
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop3;
                                                                                                                                                               }
                                                                                                                                                               if(!§§pop())
                                                                                                                                                               {
                                                                                                                                                                  addr491:
                                                                                                                                                                  §§pop();
                                                                                                                                                                  addr492:
                                                                                                                                                                  if(!(_loc2_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§!!3§);
                                                                                                                                                                     if(!(_loc2_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr422);
                                                                                                                                                                        §§push(this.§;V§);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr425);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr509);
                                                                                                                                                               }
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  break loop31;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr375);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr408);
                                                                                                                                                      }
                                                                                                                                                      addr262:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr504);
                                                                                                                                                }
                                                                                                                                                §§goto(addr465);
                                                                                                                                             }
                                                                                                                                             §§goto(addr427);
                                                                                                                                          }
                                                                                                                                          continue loop32;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 param1.prependTranslation(this.§#!!§ + this.§1!3§,this.§!!3§ + this.§;V§,0);
                                                                                                                                 §§goto(addr452);
                                                                                                                                 addr322:
                                                                                                                              }
                                                                                                                              §§goto(addr226);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr364);
                                                                                                                              §§goto(addr314);
                                                                                                                           }
                                                                                                                           addr314:
                                                                                                                           addr363:
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr456);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr503);
                                                                                                   }
                                                                                                   §§goto(addr225);
                                                                                                }
                                                                                                return;
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          addr468:
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             §§goto(addr471);
                                                                                             §§push(§§pop());
                                                                                          }
                                                                                          §§goto(addr508);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                          addr406:
                                                                                       }
                                                                                       §§goto(addr407);
                                                                                    }
                                                                                    §§goto(addr262);
                                                                                 }
                                                                                 §§goto(addr146);
                                                                              }
                                                                              §§goto(addr129);
                                                                           }
                                                                           §§goto(addr309);
                                                                        }
                                                                        §§goto(addr112);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr465);
                                                                     }
                                                                  }
                                                                  §§goto(addr492);
                                                               }
                                                               §§goto(addr322);
                                                            }
                                                            §§goto(addr340);
                                                         }
                                                         continue loop6;
                                                      }
                                                      continue loop16;
                                                   }
                                                   if(_loc2_ && _loc2_)
                                                   {
                                                      §§goto(addr491);
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      §§goto(addr437);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr516);
                                                   }
                                                }
                                                continue loop13;
                                             }
                                             continue loop1;
                                          }
                                       }
                                       §§goto(addr468);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr517);
      }
      
      public function get x() : Number
      {
         return this.§#!!§;
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§#!!§ = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.§!!3§;
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§!!3§ = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.§6!e§;
      }
      
      public function set z(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!this.§3I§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr28:
                  this.§6!e§ = param1;
               }
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function get pivotX() : Number
      {
         return this.§1!3§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§1!3§ = param1;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§;V§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§;V§ = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§#K§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§#K§ = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§+`§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§+`§ = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§2F§;
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
                  addr211:
                  while(true)
                  {
                     §§push(Number(Math.ceil(param1 / (Math.PI * 2))));
                     loop10:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr221:
                        while(true)
                        {
                           §§push(param1);
                           if(_loc3_ || _loc2_)
                           {
                              §§push(_loc2_);
                              while(true)
                              {
                                 §§push(Math.PI * 2);
                                 addr200:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr201:
                                    loop14:
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       addr202:
                                       while(true)
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop10;
                                          }
                                          §§push(Number(§§pop()));
                                          continue loop14;
                                       }
                                    }
                                 }
                              }
                              addr196:
                           }
                           addr205:
                           while(true)
                           {
                              param1 = §§pop();
                              addr206:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                  }
                  addr211:
               }
               while(true)
               {
                  §§push(param1);
                  loop2:
                  while(!_loc4_)
                  {
                     §§push(-Math.PI);
                     loop3:
                     for(; !(_loc4_ && param1); if(_loc4_ && param1)
                     {
                        continue;
                     },§§push(§§pop() + §§pop()),if(!(_loc4_ && _loc3_))
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr174);
                        }
                        if(!_loc3_)
                        {
                           continue loop2;
                        }
                        if(!(_loc4_ && _loc2_))
                        {
                           continue loop0;
                        }
                        §§goto(addr205);
                     },§§goto(addr131))
                     {
                        if(§§pop() < §§pop())
                        {
                           if(_loc3_ || _loc3_)
                           {
                              if(!_loc4_)
                              {
                                 if(_loc3_ || param1)
                                 {
                                    §§push(Number(Math.ceil(-param1 / (Math.PI * 2))));
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       addr175:
                                       loop5:
                                       while(true)
                                       {
                                          §§push(param1);
                                          if(!(_loc4_ && param1))
                                          {
                                             §§push(_loc2_);
                                             if(_loc3_ || param1)
                                             {
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§push(Math.PI * 2);
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      continue loop3;
                                                   }
                                                   §§goto(addr200);
                                                }
                                                break;
                                             }
                                             continue loop3;
                                          }
                                          addr131:
                                          addr131:
                                          param1 = §§pop();
                                          while(true)
                                          {
                                             addr25:
                                             while(true)
                                             {
                                                this.§2F§ = param1;
                                                if(_loc4_ && _loc3_)
                                                {
                                                   continue;
                                                }
                                                if(_loc4_ && param1)
                                                {
                                                   continue loop5;
                                                }
                                                if(_loc3_ || this)
                                                {
                                                   return;
                                                }
                                                §§goto(addr206);
                                             }
                                          }
                                       }
                                       §§goto(addr201);
                                    }
                                    addr174:
                                 }
                                 else
                                 {
                                    §§goto(addr211);
                                 }
                              }
                              §§goto(addr221);
                           }
                           §§goto(addr175);
                        }
                        §§goto(addr25);
                     }
                     §§goto(addr196);
                  }
                  §§goto(addr202);
               }
               if(!(_loc3_ || param1))
               {
                  continue;
               }
               §§goto(addr131);
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr211);
      }
      
      public function get alpha() : Number
      {
         return this.§@5§;
      }
      
      public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            if(!(_loc2_ && _loc2_))
            {
               §§push(param1);
               if(!(_loc2_ && this))
               {
                  §§push(§§pop() < 0);
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && param1))
                        {
                           §§push(0);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(Number(§§pop()));
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr83:
                              }
                           }
                        }
                        else
                        {
                           addr90:
                           §§push(Number(1));
                           if(_loc2_ && this)
                           {
                              addr103:
                              §§push(Number(§§pop()));
                           }
                           else
                           {
                              addr99:
                           }
                        }
                        §§goto(addr104);
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc3_)
                        {
                           §§goto(addr89);
                        }
                     }
                     §§goto(addr99);
                  }
                  addr89:
                  if(§§pop() > 1)
                  {
                     §§goto(addr90);
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc3_)
                     {
                        §§goto(addr103);
                     }
                  }
                  §§goto(addr104);
               }
               §§goto(addr83);
            }
            §§goto(addr90);
         }
         addr104:
         §§pop().§@5§ = §§pop();
      }
      
      public function get visible() : Boolean
      {
         return this.§ !g§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§ !g§ = param1;
         }
      }
      
      public function get §&!U§() : Boolean
      {
         return this.§&!"§;
      }
      
      public function set §&!U§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§&!"§ = param1;
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
         if(!_loc2_)
         {
            this.mName = param1;
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§3I§;
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
