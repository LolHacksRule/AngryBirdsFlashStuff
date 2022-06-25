package §1!&§
{
   import §"$§.RenderSupport;
   import §@%§.§"m§;
   import §@%§.§,K§;
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
      
      private static var § !3§:Vector.<DisplayObject>;
      
      private static var §4q§:Rectangle;
      
      private static var §4!g§:Matrix;
      
      private static var §2!;§:Matrix;
      
      protected static var §#s§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            § !3§ = new Vector.<DisplayObject>(0);
            do
            {
               §4q§ = new Rectangle();
               do
               {
                  §4!g§ = new Matrix();
                  do
                  {
                     §2!;§ = new Matrix();
                     do
                     {
                        §#s§ = 0;
                     }
                     while(!_loc1_);
                     
                  }
                  while(!(_loc1_ || DisplayObject));
                  
               }
               while(!(_loc1_ || _loc2_));
               
            }
            while(_loc2_);
            
         }
      }
      
      private var §`!Z§:Number;
      
      private var §[§:Number;
      
      private var §@!h§:Number;
      
      private var §#O§:Number;
      
      private var §,!,§:Number;
      
      private var § !+§:Number;
      
      private var §#3§:Number;
      
      private var §'!5§:Number;
      
      private var §`2§:Boolean;
      
      private var §,b§:Boolean;
      
      private var mName:String;
      
      private var §<!9§:Number;
      
      private var §3!<§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super();
            if(!_loc2_)
            {
               if(getQualifiedClassName(this) == "starling.display::DisplayObject")
               {
                  if(_loc3_ || _loc1_)
                  {
                     throw new §"m§();
                  }
                  addr110:
                  §§push(this);
                  §§push(this);
                  §§push(this.§'!5§ = 1);
                  if(!(_loc2_ && _loc1_))
                  {
                     var _loc1_:*;
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§ !+§ = §§pop();
                  §§pop().§,!,§ = _loc1_;
                  if(!(_loc2_ && _loc1_))
                  {
                     §§goto(addr149);
                  }
               }
               else
               {
                  addr50:
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this.§#3§ = 0);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§#O§ = §§pop();
                  §§push(_loc1_);
                  if(_loc3_ || _loc1_)
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§@!h§ = §§pop();
                  §§push(_loc1_);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§[§ = §§pop();
                  §§pop().§`!Z§ = _loc1_;
                  if(!_loc2_)
                  {
                     §§goto(addr110);
                  }
               }
               §§goto(addr160);
            }
            §§goto(addr50);
         }
         addr149:
         this.§`2§ = this.§,b§ = true;
         if(_loc3_)
         {
            addr160:
            this.§<!9§ = -1;
         }
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
      
      public function §!![§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§3!<§);
            if(_loc3_ || _loc3_)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§3!<§);
                        addr82:
                        while(true)
                        {
                           §§pop().removeChild(this);
                           addr85:
                           while(true)
                           {
                           }
                        }
                     }
                     addr80:
                  }
                  while(true)
                  {
                     §§push(param1);
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && this))
                           {
                              if(_loc3_)
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    this.dispose();
                                 }
                                 else
                                 {
                                    §§goto(addr80);
                                 }
                              }
                              §§goto(addr85);
                           }
                           break;
                        }
                        break;
                     }
                     continue loop0;
                  }
                  return;
               }
            }
            §§goto(addr82);
         }
         §§goto(addr85);
      }
      
      public function §&!R§(param1:DisplayObject, param2:Matrix = null) : Matrix
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            §§push(Boolean(param2));
            if(!(_loc5_ && this))
            {
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     param2.identity();
                     if(_loc6_)
                     {
                        addr46:
                        if(param1 == this)
                        {
                           if(!_loc5_)
                           {
                              §§goto(addr51);
                           }
                           else
                           {
                              loop41:
                              while(true)
                              {
                                 param2.translate(this.§`!Z§,this.§[§);
                                 if(_loc5_)
                                 {
                                    loop33:
                                    while(_loc6_ || param2)
                                    {
                                       param2.scale(this.§,!,§,this.§ !+§);
                                       loop34:
                                       while(true)
                                       {
                                          if(_loc6_ || param1)
                                          {
                                             addr359:
                                             if(_loc6_ || this)
                                             {
                                                loop35:
                                                while(true)
                                                {
                                                   §§push(this.§#3§);
                                                   loop36:
                                                   while(_loc6_)
                                                   {
                                                      §§push(0);
                                                      loop37:
                                                      while(true)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(§§pop() != §§pop())
                                                            {
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     param2.rotate(this.§#3§);
                                                                     addr157:
                                                                     §§push(this.§`!Z§);
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop36;
                                                                        }
                                                                        if(_loc6_)
                                                                        {
                                                                           addr164:
                                                                           if(!(_loc5_ && param1))
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(0);
                                                                                 loop39:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() == §§pop());
                                                                                    if(!(_loc5_ && param1))
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§push(!§§pop());
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             addr187:
                                                                                             if(_loc6_ || this)
                                                                                             {
                                                                                                if(_loc6_ || _loc3_)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(!(_loc5_ && param2))
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         addr211:
                                                                                                         if(_loc6_ || param1)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               addr221:
                                                                                                               if(_loc6_ || _loc3_)
                                                                                                               {
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     if(!(_loc5_ && param1))
                                                                                                                     {
                                                                                                                        addr238:
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        if(_loc6_ || param1)
                                                                                                                        {
                                                                                                                           if(!(_loc5_ && _loc3_))
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 addr253:
                                                                                                                                 loop40:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc6_ || _loc3_))
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§pop();
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          continue loop34;
                                                                                                                                       }
                                                                                                                                       §§goto(addr513);
                                                                                                                                    }
                                                                                                                                    loop21:
                                                                                                                                    while(!_loc5_)
                                                                                                                                    {
                                                                                                                                       if(_loc6_ || param2)
                                                                                                                                       {
                                                                                                                                          §§push(!§§pop());
                                                                                                                                          loop22:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc5_ && this))
                                                                                                                                             {
                                                                                                                                                if(_loc6_ || param2)
                                                                                                                                                {
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                   loop23:
                                                                                                                                                   while(_loc6_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      while(_loc6_ || param2)
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop();
                                                                                                                                                                  addr425:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§ !+§);
                                                                                                                                                                     break loop36;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr424:
                                                                                                                                                            }
                                                                                                                                                            addr336:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  continue loop33;
                                                                                                                                                               }
                                                                                                                                                               continue loop35;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr221);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            param2.translate(-this.§@!h§,-this.§#O§);
                                                                                                                                                            break loop34;
                                                                                                                                                            §§goto(addr359);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc6_ || this)
                                                                                                                                                         {
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop();
                                                                                                                                                                  break loop33;
                                                                                                                                                                  §§goto(addr211);
                                                                                                                                                               }
                                                                                                                                                               addr485:
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr442);
                                                                                                                                                               }
                                                                                                                                                               addr367:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§,!,§);
                                                                                                                                                                  addr370:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(1);
                                                                                                                                                                     addr371:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop21;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr440:
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                         §§goto(addr415);
                                                                                                                                                      }
                                                                                                                                                      addr415:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         addr506:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               break loop23;
                                                                                                                                                            }
                                                                                                                                                            addr460:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               addr461:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§@!h§);
                                                                                                                                                                        addr464:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           addr465:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                                                                              addr466:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(!§§pop());
                                                                                                                                                                                 addr467:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                    addr468:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       break loop39;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr462:
                                                                                                                                                                  }
                                                                                                                                                                  else if(param1 == null)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr513);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     if(param1.§3!<§ == this)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc5_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           param1.§&!R§(this,param2);
                                                                                                                                                                           if(!(_loc6_ || this))
                                                                                                                                                                           {
                                                                                                                                                                              addr574:
                                                                                                                                                                              § !3§.length = 0;
                                                                                                                                                                              §§goto(addr592);
                                                                                                                                                                           }
                                                                                                                                                                           param2.invert();
                                                                                                                                                                           §§goto(addr596);
                                                                                                                                                                        }
                                                                                                                                                                        addr592:
                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr592);
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc6_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(true)
                                                                                                                                                                           {
                                                                                                                                                                              var _loc3_:DisplayObject = null;
                                                                                                                                                                              var _loc4_:DisplayObject = this;
                                                                                                                                                                              if(_loc6_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 addr623:
                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    § !3§.push(_loc4_);
                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc4_ = _loc4_.parent;
                                                                                                                                                                                       §§goto(addr623);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              _loc4_ = param1;
                                                                                                                                                                              if(_loc6_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr642:
                                                                                                                                                                                 §§push(Boolean(_loc4_));
                                                                                                                                                                                 if(!(_loc5_ && param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                    }
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc5_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          if(_loc6_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr671:
                                                                                                                                                                                             §§push(§ !3§.indexOf(_loc4_) == -1);
                                                                                                                                                                                             if(_loc6_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr685:
                                                                                                                                                                                                addr684:
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc4_ = _loc4_.parent;
                                                                                                                                                                                                   §§goto(addr642);
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!(_loc5_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc4_ == null)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc5_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr703);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   _loc3_ = _loc4_;
                                                                                                                                                                                                   _loc4_ = this;
                                                                                                                                                                                                   if(!_loc5_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr742:
                                                                                                                                                                                                      if(_loc4_ != _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc4_.§&!R§(_loc4_.§3!<§,§4!g§);
                                                                                                                                                                                                         if(!_loc5_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            param2.concat(§4!g§);
                                                                                                                                                                                                            if(_loc6_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc4_ = _loc4_.parent;
                                                                                                                                                                                                               §§goto(addr742);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr747:
                                                                                                                                                                                                            §2!;§.identity();
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr751:
                                                                                                                                                                                                         _loc4_ = param1;
                                                                                                                                                                                                         if(_loc6_ || param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr799:
                                                                                                                                                                                                            if(_loc4_ != _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc4_.§&!R§(_loc4_.§3!<§,§4!g§);
                                                                                                                                                                                                               if(!_loc5_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §2!;§.concat(§4!g§);
                                                                                                                                                                                                                  if(_loc6_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc4_ = _loc4_.parent;
                                                                                                                                                                                                                     §§goto(addr799);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr815:
                                                                                                                                                                                                               param2.concat(§2!;§);
                                                                                                                                                                                                               §§goto(addr820);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!_loc5_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §2!;§.invert();
                                                                                                                                                                                                               if(_loc5_ && param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr820:
                                                                                                                                                                                                               return param2;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr815);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!_loc5_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr747);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr751);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr747);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr685);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr703:
                                                                                                                                                                                          throw new ArgumentError("Object not connected to target");
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr684);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr685);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr671);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr596:
                                                                                                                                                                        }
                                                                                                                                                                        return param2;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr574);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      addr508:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(param1 == null);
                                                                                                                                                         addr491:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                            break loop22;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr407:
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§goto(addr468);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             addr493:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                addr494:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      while(_loc6_)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            addr498:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§3!<§ == null);
                                                                                                                                                               break loop40;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      loop42:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         addr504:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr505);
                                                                                                                                                            continue loop42;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr495:
                                                                                                                                                      addr503:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr460);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr382:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(!§§pop());
                                                                                                                                          addr432:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                             break loop21;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(!(_loc5_ && param1))
                                                                                                                                    {
                                                                                                                                       §§goto(addr440);
                                                                                                                                    }
                                                                                                                                    §§goto(addr491);
                                                                                                                                    addr109:
                                                                                                                                    if(_loc5_ && _loc3_)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       §§push(!§§pop());
                                                                                                                                       if(!(_loc5_ && this))
                                                                                                                                       {
                                                                                                                                          addr126:
                                                                                                                                          if(_loc6_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr136);
                                                                                                                                             }
                                                                                                                                             §§goto(addr466);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc5_ && param1))
                                                                                                                                             {
                                                                                                                                                if(!(_loc5_ && param2))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr329);
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                }
                                                                                                                                                §§goto(addr504);
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                             §§goto(addr126);
                                                                                                                                          }
                                                                                                                                          §§goto(addr495);
                                                                                                                                          addr314:
                                                                                                                                       }
                                                                                                                                       addr136:
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       if(!(_loc5_ && param1))
                                                                                                                                       {
                                                                                                                                          addr143:
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             break loop35;
                                                                                                                                          }
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             continue loop41;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(_loc6_ || param1)
                                                                                                                                          {
                                                                                                                                             §§goto(addr336);
                                                                                                                                             §§goto(addr136);
                                                                                                                                          }
                                                                                                                                          §§goto(addr461);
                                                                                                                                          addr329:
                                                                                                                                       }
                                                                                                                                       §§goto(addr513);
                                                                                                                                    }
                                                                                                                                    §§goto(addr382);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr460);
                                                                                                                                 }
                                                                                                                                 addr253:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr143);
                                                                                                                              }
                                                                                                                              addr513:
                                                                                                                              addr513:
                                                                                                                              _loc4_ = this;
                                                                                                                              addr543:
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 _loc4_.§&!R§(_loc4_.§3!<§,§4!g§);
                                                                                                                                 if(_loc6_ || param2)
                                                                                                                                 {
                                                                                                                                    param2.concat(§4!g§);
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    §§goto(addr546);
                                                                                                                                 }
                                                                                                                                 _loc4_ = _loc4_.parent;
                                                                                                                                 §§goto(addr543);
                                                                                                                              }
                                                                                                                              addr546:
                                                                                                                              return param2;
                                                                                                                           }
                                                                                                                           §§goto(addr506);
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr494);
                                                                                                                  }
                                                                                                                  §§goto(addr415);
                                                                                                               }
                                                                                                               §§goto(addr423);
                                                                                                            }
                                                                                                            §§goto(addr238);
                                                                                                         }
                                                                                                         §§goto(addr485);
                                                                                                      }
                                                                                                      §§goto(addr424);
                                                                                                   }
                                                                                                   §§goto(addr253);
                                                                                                }
                                                                                                §§goto(addr432);
                                                                                             }
                                                                                             break loop37;
                                                                                          }
                                                                                          §§goto(addr253);
                                                                                       }
                                                                                       §§goto(addr407);
                                                                                    }
                                                                                    §§goto(addr253);
                                                                                 }
                                                                                 while(!(_loc5_ && _loc3_))
                                                                                 {
                                                                                    §§goto(addr477);
                                                                                    §§push(Boolean(§§pop()));
                                                                                 }
                                                                                 §§goto(addr493);
                                                                                 addr174:
                                                                              }
                                                                              §§goto(addr464);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr370);
                                                                        addr279:
                                                                        §§push(this.§[§);
                                                                        if(_loc5_ && param2)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(0);
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop37;
                                                                        }
                                                                        §§goto(addr174);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(0);
                                                                        addr430:
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr431);
                                                                        }
                                                                        §§goto(addr164);
                                                                     }
                                                                     addr303:
                                                                     addr429:
                                                                  }
                                                                  break loop34;
                                                               }
                                                               §§goto(addr303);
                                                            }
                                                            §§goto(addr157);
                                                         }
                                                         §§goto(addr465);
                                                      }
                                                      while(true)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr314);
                                                            §§push(!§§pop());
                                                         }
                                                         break;
                                                         §§goto(addr187);
                                                      }
                                                      §§goto(addr467);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(1);
                                                      if(_loc6_)
                                                      {
                                                         §§goto(addr311);
                                                         §§push(§§pop() == §§pop());
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr371);
                                                }
                                                §§goto(addr56);
                                             }
                                             §§goto(addr442);
                                          }
                                          §§goto(addr425);
                                       }
                                       while(_loc6_)
                                       {
                                          §§goto(addr367);
                                       }
                                       §§goto(addr508);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr429);
                                    }
                                 }
                                 else
                                 {
                                    addr156:
                                 }
                                 addr56:
                                 return param2;
                              }
                           }
                        }
                        else
                        {
                           §§push(param1 == this.§3!<§);
                        }
                        §§goto(addr503);
                     }
                     §§goto(addr462);
                  }
                  addr51:
                  return param2;
               }
               param2 = new Matrix();
               §§goto(addr46);
            }
            §§goto(addr497);
         }
         §§goto(addr156);
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §,K§("Method needs to be implemented in subclass");
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
                  if(_loc4_)
                  {
                     §§push(Boolean(§§pop()));
                  }
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
                              §§push(this.§`2§);
                              if(!(_loc3_ && _loc3_))
                              {
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 §§push(!§§pop());
                                 loop5:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!(_loc3_ && param1))
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc4_ || _loc3_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                          }
                                          loop9:
                                          while(true)
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      if(_loc4_ || param1)
                                                      {
                                                         break loop5;
                                                      }
                                                      loop7:
                                                      while(true)
                                                      {
                                                         §§push(this.§,b§);
                                                         if(!(_loc4_ || _loc3_))
                                                         {
                                                            continue loop10;
                                                         }
                                                         if(!_loc4_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         if(!(_loc4_ || param2))
                                                         {
                                                            continue loop3;
                                                         }
                                                         §§push(!§§pop());
                                                         if(!_loc4_)
                                                         {
                                                            continue loop10;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               continue loop9;
                                                            }
                                                            continue loop1;
                                                         }
                                                         addr154:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            continue loop7;
                                                         }
                                                      }
                                                      loop13:
                                                      while(this.getBounds(this,§4q§).containsPoint(param1))
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            §§goto(addr38);
                                                         }
                                                         addr40:
                                                         if(_loc4_ || this)
                                                         {
                                                            break;
                                                         }
                                                         addr103:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_);
                                                            if(!_loc4_)
                                                            {
                                                               §§pop();
                                                               addr109:
                                                               §§push(Boolean(this));
                                                               while(§§pop())
                                                               {
                                                                  continue loop13;
                                                               }
                                                               continue loop4;
                                                               addr109:
                                                            }
                                                            §§goto(addr109);
                                                            §§goto(addr40);
                                                         }
                                                      }
                                                      §§push(null);
                                                      if(_loc4_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      addr102:
                                                      return §§pop();
                                                      addr27:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr103);
                                                   }
                                                   §§goto(addr109);
                                                }
                                                §§goto(addr27);
                                             }
                                          }
                                       }
                                       continue loop2;
                                       addr142:
                                    }
                                    §§goto(addr154);
                                 }
                                 §§goto(addr102);
                                 §§push(null);
                              }
                              §§goto(addr142);
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr85);
                  }
               }
            }
         }
         addr38:
         return this;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §2!;§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§&!R§(_loc2_.§3!<§,§4!g§);
            if(_loc4_ && param1)
            {
               break;
            }
            §2!;§.concat(§4!g§);
            if(!(_loc3_ || this))
            {
               break;
            }
            _loc2_ = _loc2_.parent;
         }
         return §2!;§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §2!;§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(true)
         {
            if(!_loc2_)
            {
               if(_loc3_ || _loc3_)
               {
                  break;
               }
               §§goto(addr92);
            }
            _loc2_.§&!R§(_loc2_.§3!<§,§4!g§);
            if(_loc3_ || _loc2_)
            {
               §2!;§.concat(§4!g§);
               if(!(_loc3_ || _loc3_))
               {
                  break;
               }
            }
            _loc2_ = _loc2_.parent;
         }
         §2!;§.invert();
         addr92:
         return §2!;§.transformPoint(param1);
      }
      
      public function render(param1:RenderSupport, param2:Number) : void
      {
         throw new §,K§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TouchEvent = null;
         if(!(_loc3_ && _loc2_))
         {
            if(param1 is TouchEvent)
            {
               if(_loc4_ || param1)
               {
                  _loc2_ = param1 as TouchEvent;
                  if(!_loc3_)
                  {
                     if(_loc2_.timestamp == this.§<!9§)
                     {
                        if(_loc4_)
                        {
                           return;
                        }
                     }
                  }
                  this.§<!9§ = _loc2_.timestamp;
               }
               §§goto(addr85);
            }
            super.dispatchEvent(param1);
         }
         addr85:
      }
      
      function §]X§(param1:DisplayObjectContainer) : void
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
               if(_loc7_ && param1)
               {
                  continue;
               }
               §§push(Boolean(§§pop()));
               if(_loc8_ || _loc2_)
               {
                  §§push(§§pop());
                  if(_loc8_ || _loc2_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(_loc8_ || _loc3_)
                     {
                        §§pop();
                        if(!_loc7_)
                        {
                           §§push(_loc2_ == null);
                           if(!_loc7_)
                           {
                              addr78:
                              §§push(!§§pop());
                              if(_loc7_ && _loc3_)
                              {
                                 continue;
                              }
                           }
                        }
                        else
                        {
                           addr106:
                           _loc3_ = §use§();
                           if(!(_loc7_ && param1))
                           {
                              §§push(param1 == this.§3!<§);
                              if(_loc8_)
                              {
                                 §§push(!§§pop());
                                 if(!_loc7_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop());
                                       if(_loc8_ || param1)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(_loc8_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc8_ || _loc2_)
                                                {
                                                   §§pop();
                                                   if(_loc8_)
                                                   {
                                                      §§push(this.§3!<§);
                                                      if(_loc8_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc8_ || _loc2_)
                                                         {
                                                            addr175:
                                                            §§push(§§pop());
                                                            if(!(_loc7_ && this))
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc8_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc7_ && _loc2_))
                                                                     {
                                                                        §§pop();
                                                                        if(!(_loc7_ && _loc2_))
                                                                        {
                                                                           §§push(_loc3_.length > 0);
                                                                           if(!_loc7_)
                                                                           {
                                                                              addr208:
                                                                              §§push(Boolean(§§pop()));
                                                                              if(_loc8_ || _loc3_)
                                                                              {
                                                                                 addr216:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          var _loc5_:* = §§pop();
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             var _loc6_:* = _loc3_;
                                                                                             if(_loc7_ && _loc3_)
                                                                                             {
                                                                                             }
                                                                                             loop1:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§hasnext(_loc6_,_loc5_));
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                                                      if(!(_loc7_ && param1))
                                                                                                      {
                                                                                                         this.removeEventListeningObject(this,_loc4_);
                                                                                                      }
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(_loc8_ || _loc3_)
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         if(_loc8_ || _loc2_)
                                                                                                         {
                                                                                                            addr276:
                                                                                                            this.§3!<§ = param1;
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               addr283:
                                                                                                               §§push(Boolean(this.§3!<§));
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  addr286:
                                                                                                                  §§push(§§pop());
                                                                                                                  if(_loc8_ || _loc2_)
                                                                                                                  {
                                                                                                                     addr295:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              addr301:
                                                                                                                              §§push(_loc3_.length > 0);
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 addr308:
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(!(_loc7_ && param1))
                                                                                                                                    {
                                                                                                                                       addr317:
                                                                                                                                       _loc5_ = 0;
                                                                                                                                       addr316:
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          addr330:
                                                                                                                                          _loc6_ = _loc3_;
                                                                                                                                          if(_loc7_ && param1)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§hasnext(_loc6_,_loc5_));
                                                                                                                                             break loop1;
                                                                                                                                          }
                                                                                                                                          addr357:
                                                                                                                                          addr356:
                                                                                                                                          addr354:
                                                                                                                                       }
                                                                                                                                       §§goto(addr357);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr308);
                                                                                                                           }
                                                                                                                           return;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr308);
                                                                                                                  }
                                                                                                                  §§goto(addr295);
                                                                                                               }
                                                                                                               §§goto(addr308);
                                                                                                            }
                                                                                                            §§goto(addr301);
                                                                                                         }
                                                                                                         §§goto(addr316);
                                                                                                      }
                                                                                                      §§goto(addr330);
                                                                                                   }
                                                                                                   §§goto(addr356);
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
                                                                                                §§goto(addr330);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr330);
                                                                                       }
                                                                                       §§goto(addr317);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr276);
                                                                              }
                                                                           }
                                                                           §§goto(addr308);
                                                                        }
                                                                        §§goto(addr301);
                                                                     }
                                                                     §§goto(addr308);
                                                                  }
                                                                  §§goto(addr216);
                                                               }
                                                            }
                                                            §§goto(addr295);
                                                         }
                                                         §§goto(addr208);
                                                      }
                                                      §§goto(addr283);
                                                   }
                                                   §§goto(addr276);
                                                }
                                                §§goto(addr308);
                                             }
                                             §§goto(addr175);
                                          }
                                       }
                                       §§goto(addr295);
                                    }
                                    §§goto(addr216);
                                 }
                                 §§goto(addr286);
                              }
                              §§goto(addr308);
                           }
                           §§goto(addr317);
                        }
                     }
                     §§push(Boolean(§§pop()));
                  }
                  continue;
               }
            }
            §§goto(addr78);
         }
         if(_loc8_)
         {
            if(_loc2_ == this)
            {
               if(_loc8_ || _loc3_)
               {
                  throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
               }
            }
         }
         §§goto(addr106);
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§3!<§);
            if(!(_loc4_ && param2))
            {
               if(§§pop())
               {
                  if(_loc3_ || param1)
                  {
                     addr48:
                     this.§3!<§.removeEventListeningObject(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §§push(this.§3!<§);
            if(!(_loc3_ && param2))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr49:
                     this.§3!<§.addEventListeningObject(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr49);
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.dispatchEvent(param1);
         }
      }
      
      public function get §`!7§() : Matrix
      {
         return this.§&!R§(this.§3!<§);
      }
      
      public function get bounds() : Rectangle
      {
         return this.getBounds(this.§3!<§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§3!<§,§4q§).width;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§,!,§ = 1;
         }
         §§push(this.width);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ == 0)
            {
               this.scaleX = 1;
               if(!(_loc3_ || this))
               {
                  addr95:
               }
               return;
            }
            if(_loc3_ || _loc3_)
            {
               addr83:
               §§push(this);
               §§push(param1);
               if(!(_loc4_ && this))
               {
                  §§push(§§pop() / _loc2_);
               }
               §§pop().scaleX = §§pop();
            }
            §§goto(addr95);
         }
         §§goto(addr83);
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.§3!<§,§4q§).height;
      }
      
      public function set height(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§ !+§ = 1;
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
               if(_loc3_ || param1)
               {
                  if(!_loc3_)
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
                  return;
               }
               §§goto(addr85);
            }
         }
         §§goto(addr78);
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
               if(_loc3_ || _loc1_)
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
         if(_loc3_)
         {
            super.addEventListener(param1,param2);
            do
            {
               this.addEventListeningObject(this,param1);
            }
            while(!_loc3_);
            
         }
      }
      
      override public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super.removeEventListener(param1,param2);
            loop0:
            while(!hasEventListener(param1))
            {
               if(_loc4_ || param1)
               {
                  while(true)
                  {
                     this.removeEventListeningObject(this,param1);
                  }
                  addr62:
               }
               while(true)
               {
                  if(_loc4_)
                  {
                     break loop0;
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr62);
      }
      
      override public function removeEventListeners(param1:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:Array = §use§();
         if(_loc7_)
         {
            super.removeEventListeners(param1);
            if(!_loc6_)
            {
               §§goto(addr32);
            }
            §§goto(addr45);
         }
         addr32:
         if(param1 == null)
         {
            addr45:
            for each(_loc3_ in _loc2_)
            {
               if(!(_loc6_ && _loc2_))
               {
                  this.removeEventListeningObject(this,_loc3_);
               }
            }
            if(_loc6_ && _loc3_)
            {
            }
         }
         else
         {
            this.removeEventListeningObject(this,param1);
         }
      }
      
      public function §+C§(param1:Matrix3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§#3§);
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
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!(_loc3_ && this))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        loop4:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          §§pop();
                                          loop8:
                                          while(true)
                                          {
                                             §§push(this.§ !+§);
                                             loop9:
                                             while(true)
                                             {
                                                §§push(1);
                                                if(!_loc3_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         addr567:
                                                         while(true)
                                                         {
                                                            loop13:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  §§push(this.§`!Z§);
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     §§push(0);
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        loop16:
                                                                        while(!(_loc3_ && param1))
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(!§§pop());
                                                                              if(_loc2_ || param1)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 continue loop10;
                                                                              }
                                                                              loop52:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc3_ && this))
                                                                                 {
                                                                                    §§pop();
                                                                                    loop53:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§[§);
                                                                                       loop54:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(0);
                                                                                          loop55:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                §§push(§§pop() == §§pop());
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   if(!(_loc2_ || _loc2_))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(!§§pop());
                                                                                                   if(!(_loc3_ && this))
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                                loop56:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc2_ || this))
                                                                                                   {
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   loop19:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            param1.prependTranslation(this.§`!Z§,this.§[§,0);
                                                                                                            addr453:
                                                                                                            addr573:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  addr569:
                                                                                                                  §§push(this.§`!Z§);
                                                                                                                  break;
                                                                                                               }
                                                                                                            }
                                                                                                            addr571:
                                                                                                            §§push(this.§@!h§);
                                                                                                            if(!(_loc3_ && param1))
                                                                                                            {
                                                                                                               addr581:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               break loop9;
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         addr445:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§#3§);
                                                                                                         loop23:
                                                                                                         while(!(_loc3_ && this))
                                                                                                         {
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               if(_loc2_ || _loc2_)
                                                                                                               {
                                                                                                                  continue loop9;
                                                                                                               }
                                                                                                               §§goto(addr571);
                                                                                                            }
                                                                                                            §§goto(addr581);
                                                                                                            addr30:
                                                                                                            if(_loc3_ && this)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            addr37:
                                                                                                            §§push(0);
                                                                                                            if(!(_loc3_ && this))
                                                                                                            {
                                                                                                               addr45:
                                                                                                               if(_loc2_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     addr55:
                                                                                                                     if(_loc2_ || this)
                                                                                                                     {
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              §§push(!§§pop());
                                                                                                                              if(!(_loc3_ && this))
                                                                                                                              {
                                                                                                                                 if(_loc2_)
                                                                                                                                 {
                                                                                                                                    addr76:
                                                                                                                                    if(_loc2_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       if(_loc2_)
                                                                                                                                       {
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             addr88:
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                             if(!(_loc3_ && param1))
                                                                                                                                             {
                                                                                                                                                addr95:
                                                                                                                                                if(_loc2_ || param1)
                                                                                                                                                {
                                                                                                                                                   while(§§pop())
                                                                                                                                                   {
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc2_)
                                                                                                                                                         {
                                                                                                                                                            addr108:
                                                                                                                                                            if(_loc2_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop53;
                                                                                                                                                                     }
                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        param1.prependRotation(this.§#3§ / Math.PI * 180,Vector3D.Z_AXIS);
                                                                                                                                                                        loop26:
                                                                                                                                                                        for(; !_loc3_; if(_loc3_ && _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        },param1.prependScale(this.§,!,§,this.§ !+§,1),§§goto(addr301))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc2_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 addr319:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§,!,§);
                                                                                                                                                                                    loop28:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop54;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(1);
                                                                                                                                                                                       loop29:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() == §§pop());
                                                                                                                                                                                          loop30:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(!§§pop());
                                                                                                                                                                                             addr327:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                addr328:
                                                                                                                                                                                                loop32:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop7;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                   loop33:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                      addr332:
                                                                                                                                                                                                      addr497:
                                                                                                                                                                                                      loop34:
                                                                                                                                                                                                      while(!(_loc3_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop41:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc3_ && this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(_loc2_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(this.§[§);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr301:
                                                                                                                                                                                                                        addr598:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop26;
                                                                                                                                                                                                                     break loop23;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.§@!h§);
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                                                                 while(_loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(!§§pop());
                                                                                                                                                                                                                                       addr159:
                                                                                                                                                                                                                                       addr533:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc2_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                addr169:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc2_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                                                                            if(!_loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc3_ && param1))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                  continue loop33;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop34;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop33;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop2;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop56;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr340:
                                                                                                                                                                                                                                                   while(_loc2_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(this.§ !+§);
                                                                                                                                                                                                                                                         addr243:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc2_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop29;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop0;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop29;
                                                                                                                                                                                                                                                         §§goto(addr108);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop16;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop41;
                                                                                                                                                                                                                                                §§goto(addr55);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop56;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop30;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr532:
                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr535:
                                                                                                                                                                                                                                          if(_loc2_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             param1.prependTranslation(this.§`!Z§ + this.§@!h§,this.§[§ + this.§#O§,0);
                                                                                                                                                                                                                                             addr556:
                                                                                                                                                                                                                                             break loop8;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          break loop32;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       break loop8;
                                                                                                                                                                                                                                       §§goto(addr95);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr37);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr512:
                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                 addr155:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop14;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(this.§#O§);
                                                                                                                                                                                                                        addr239:
                                                                                                                                                                                                                        continue loop28;
                                                                                                                                                                                                                        if(!_loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr30);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr243);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr514:
                                                                                                                                                                                                                     §§push(0);
                                                                                                                                                                                                                     if(_loc3_ && this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break loop9;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                                                                                                                     if(!(_loc2_ || _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop5;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr532);
                                                                                                                                                                                                                        §§push(!§§pop());
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr604);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr277:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr340);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop52;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop19;
                                                                                                                                                                                                         §§goto(addr332);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop8;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop54;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr410:
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr445);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr453);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr535);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop53;
                                                                                                                                                                  addr383:
                                                                                                                                                               }
                                                                                                                                                               param1.prependTranslation(this.§@!h§,this.§#O§,0);
                                                                                                                                                               addr125:
                                                                                                                                                               if(_loc2_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc2_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  addr644:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§,!,§);
                                                                                                                                                                     addr602:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(1);
                                                                                                                                                                        addr603:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                                                                           addr604:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop5;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr556);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr343);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr239);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr327);
                                                                                                                                                            addr237:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr301);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr125);
                                                                                                                                                   }
                                                                                                                                                   addr19:
                                                                                                                                                   return;
                                                                                                                                                   addr102:
                                                                                                                                                }
                                                                                                                                                §§goto(addr158);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc2_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   if(_loc2_ || param1)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      §§goto(addr237);
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                continue loop13;
                                                                                                                                                §§goto(addr88);
                                                                                                                                             }
                                                                                                                                             §§goto(addr532);
                                                                                                                                             addr222:
                                                                                                                                          }
                                                                                                                                          addr587:
                                                                                                                                          §§push(§§pop());
                                                                                                                                          continue loop4;
                                                                                                                                       }
                                                                                                                                       continue loop52;
                                                                                                                                    }
                                                                                                                                    §§goto(addr261);
                                                                                                                                 }
                                                                                                                                 §§goto(addr159);
                                                                                                                              }
                                                                                                                              §§goto(addr88);
                                                                                                                           }
                                                                                                                           §§goto(addr522);
                                                                                                                        }
                                                                                                                        §§goto(addr327);
                                                                                                                     }
                                                                                                                     §§goto(addr169);
                                                                                                                  }
                                                                                                                  §§goto(addr88);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     continue loop55;
                                                                                                                  }
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     continue loop15;
                                                                                                                  }
                                                                                                                  if(§§pop() != §§pop())
                                                                                                                  {
                                                                                                                     §§goto(addr383);
                                                                                                                  }
                                                                                                                  §§goto(addr319);
                                                                                                                  §§goto(addr45);
                                                                                                               }
                                                                                                               continue loop55;
                                                                                                               addr378:
                                                                                                            }
                                                                                                            §§goto(addr155);
                                                                                                         }
                                                                                                         §§goto(addr512);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr436:
                                                                                             }
                                                                                             §§goto(addr573);
                                                                                          }
                                                                                          continue loop3;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr586:
                                                                                 §§goto(addr587);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 §§goto(addr644);
                                                                              }
                                                                              addr643:
                                                                           }
                                                                           §§goto(addr604);
                                                                        }
                                                                        §§pop();
                                                                        §§goto(addr598);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr569);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr603);
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(!_loc3_)
                                                {
                                                   §§goto(addr586);
                                                   §§push(!§§pop());
                                                }
                                                §§goto(addr587);
                                                §§goto(addr514);
                                             }
                                             §§goto(addr533);
                                          }
                                          §§goto(addr19);
                                       }
                                    }
                                    §§goto(addr567);
                                    if(_loc3_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    if(!§§pop())
                                    {
                                       §§goto(addr88);
                                    }
                                    §§goto(addr102);
                                 }
                              }
                           }
                           §§goto(addr643);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr410);
      }
      
      public function get x() : Number
      {
         return this.§`!Z§;
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`!Z§ = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.§[§;
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§@!h§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§@!h§ = param1;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§#O§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§#O§ = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§,!,§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,!,§ = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§ !+§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§ !+§ = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§#3§;
      }
      
      public function set rotation(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(param1);
            loop1:
            while(!_loc2_)
            {
               if(_loc3_ || this)
               {
                  §§push(-Math.PI);
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!_loc2_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           loop2:
                           while(!_loc2_)
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(param1);
                                 if(!(_loc2_ && this))
                                 {
                                    if(!(_loc2_ && this))
                                    {
                                       if(_loc2_ && _loc2_)
                                       {
                                          continue loop1;
                                       }
                                       if(§§pop() <= Math.PI)
                                       {
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             if(_loc2_)
                                             {
                                                continue loop2;
                                             }
                                             this.§#3§ = param1;
                                             §§goto(addr73);
                                             continue loop2;
                                          }
                                          continue;
                                       }
                                       §§push(param1);
                                       if(_loc3_)
                                       {
                                          §§push(Math.PI * 2);
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                          }
                                          addr121:
                                       }
                                       while(true)
                                       {
                                          param1 = §§pop();
                                          continue loop3;
                                       }
                                       addr130:
                                    }
                                    while(true)
                                    {
                                       if(_loc2_ && _loc3_)
                                       {
                                          addr142:
                                          param1 = §§pop();
                                          break loop2;
                                       }
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 §§goto(addr130);
                              }
                              return;
                           }
                           continue loop0;
                        }
                        addr135:
                        §§push(param1);
                        §§push(Math.PI * 2);
                     }
                     §§push(§§pop() + §§pop());
                     break;
                  }
                  §§goto(addr121);
               }
               §§goto(addr135);
            }
            §§goto(addr142);
         }
      }
      
      public function get alpha() : Number
      {
         return this.§'!5§;
      }
      
      public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            if(!(_loc3_ && _loc2_))
            {
               §§push(param1);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§pop() < 0);
                  if(!(_loc3_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr61:
                           §§push(0);
                           if(_loc2_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc3_)
                              {
                                 addr107:
                                 §§push(Number(§§pop()));
                              }
                              else
                              {
                                 addr67:
                              }
                           }
                           §§goto(addr67);
                        }
                        else
                        {
                           addr89:
                           §§push(Number(1));
                           if(_loc2_ || this)
                           {
                           }
                        }
                        §§goto(addr108);
                     }
                     else
                     {
                        §§push(param1);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr88);
                        }
                     }
                     §§goto(addr107);
                  }
                  addr88:
                  if(§§pop() > 1)
                  {
                     §§goto(addr89);
                  }
                  else
                  {
                     §§push(param1);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr107);
                     }
                  }
                  §§goto(addr108);
               }
               §§goto(addr67);
            }
            §§goto(addr61);
         }
         addr108:
         §§pop().§'!5§ = §§pop();
      }
      
      public function get visible() : Boolean
      {
         return this.§`2§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§`2§ = param1;
         }
      }
      
      public function get §9@§() : Boolean
      {
         return this.§,b§;
      }
      
      public function set §9@§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,b§ = param1;
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
         if(!_loc3_)
         {
            this.mName = param1;
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§3!<§;
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
