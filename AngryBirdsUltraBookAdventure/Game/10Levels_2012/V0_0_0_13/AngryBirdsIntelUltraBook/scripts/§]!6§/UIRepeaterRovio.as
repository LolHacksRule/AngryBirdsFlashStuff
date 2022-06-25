package §]!6§
{
   import §4!9§.§6"§;
   import §6b§.Log;
   import §>!-§.UIButtonGroupRovio;
   import §>!-§.UIComponentInteractiveRovio;
   import §>!-§.UIComponentRovio;
   import §>!-§.UIEventListenerRovio;
   import com.rovio.assets.AssetCache;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class UIRepeaterRovio extends UIContainerRovio
   {
      
      public static const §^7§:int = 0;
      
      public static const §7![§:int = 1;
      
      public static const §=8§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §^7§ = 0;
            while(true)
            {
               §7![§ = 1;
               §§goto(addr52);
            }
         }
         addr52:
         while(true)
         {
            §=8§ = 2;
            if(_loc2_)
            {
               if(_loc2_ || _loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public var §7'§:String;
      
      public var §'w§:Class;
      
      public var §"7§:String = null;
      
      public var §->§:Vector.<UIButtonGroupRovio>;
      
      public var §6V§:int;
      
      public var §6z§:Number;
      
      public var §!Q§:Number;
      
      public var §=!2§:Number;
      
      public var §=c§:Number;
      
      public var §[L§:Number;
      
      public var §9a§:Number;
      
      public var §>W§:Number;
      
      public var §<-§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §'t§:int;
      
      public var §>S§:Number;
      
      public var §5!8§:String = "";
      
      public var §9n§:int;
      
      public var §>P§:int;
      
      public var §'Y§:GlowFilter;
      
      public var §6[§:Boolean = true;
      
      public var § set§:int;
      
      public var §;t§:int;
      
      public var §1w§:Number = 0;
      
      public var §>a§:Number = 0;
      
      public var §0!3§:Number = 0;
      
      public var §=t§:Number = 0;
      
      public var §@`§:Boolean = false;
      
      public var §!4§:Boolean = false;
      
      public var §'M§:MovieClip = null;
      
      public function UIRepeaterRovio(param1:XML, param2:UIContainerRovio, param3:§6"§, param4:MovieClip = null)
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1575
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §%U§(param1:Array = null, param2:Class = null) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:UIRepeaterTabRovio = null;
         var _loc8_:UIButtonGroupRovio = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:XML = null;
         var _loc13_:UIRepeaterButtonRovio = null;
         var _loc14_:MovieClip = null;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc17_:int = 0;
         var _loc18_:* = 0;
         if(_loc20_ || param2)
         {
            if(param2 == null)
            {
               if(!(_loc19_ && _loc3_))
               {
                  param2 = UIRepeaterButtonRovio;
                  addr76:
                  this.§->§ = new Vector.<UIButtonGroupRovio>();
                  if(_loc20_ || param1)
                  {
                     this.§2!0§();
                     if(!_loc19_)
                     {
                        §§goto(addr96);
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr123);
               }
               addr96:
               §§push(param1);
               if(!(_loc19_ && this))
               {
                  if(§§pop() == null)
                  {
                     if(!(_loc19_ && param1))
                     {
                        addr113:
                        param1 = getParentView().getRepeaterDataXML(mName);
                     }
                     §§goto(addr123);
                  }
                  §§push(param1);
               }
               if(!§§pop())
               {
                  addr123:
                  param1 = new Array();
                  §§goto(addr127);
               }
               addr127:
               §§push(0);
               if(_loc20_ || this)
               {
                  §§push(int(§§pop()));
               }
               var _loc3_:* = §§pop();
               loop0:
               while(true)
               {
                  if(_loc3_ >= param1.length)
                  {
                     if(_loc20_ || _loc3_)
                     {
                        if(param1.length > 1)
                        {
                        }
                        break;
                     }
                     break;
                  }
                  §§push(mName + "_Tab_");
                  if(_loc20_)
                  {
                     §§push(§§pop() + _loc3_);
                  }
                  _loc4_ = §§pop();
                  if(_loc19_)
                  {
                     break;
                  }
                  _loc5_ = new MovieClip();
                  _loc6_ = <Container/>;
                  if(_loc20_)
                  {
                     _loc6_.@name = _loc4_;
                  }
                  _loc7_ = new UIRepeaterTabRovio(_loc6_,this,null,_loc5_);
                  if(!(_loc19_ && param2))
                  {
                     §4!W§.push(_loc7_);
                  }
                  _loc8_ = new UIButtonGroupRovio(this.§;t§,_loc4_);
                  if(_loc20_)
                  {
                     this.§->§.push(_loc8_);
                     if(!_loc19_)
                     {
                        §§push(this.§[L§);
                        loop1:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           loop2:
                           while(true)
                           {
                              _loc9_ = §§pop();
                              loop3:
                              while(true)
                              {
                                 §§push(this.§6V§);
                                 if(!(_loc19_ && param2))
                                 {
                                    §§push(int(§§pop()));
                                    if(_loc20_)
                                    {
                                       if(_loc19_ && _loc3_)
                                       {
                                          continue loop2;
                                       }
                                       _loc10_ = §§pop();
                                       if(!(_loc20_ || this))
                                       {
                                          continue loop0;
                                       }
                                       §§push(param1);
                                       if(!(_loc19_ && this))
                                       {
                                          §§push(_loc3_);
                                          if(!_loc19_)
                                          {
                                             if((§§pop()[§§pop()] as Array).length < _loc10_)
                                             {
                                                if(!_loc19_)
                                                {
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      if(!_loc19_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            if(_loc20_ || this)
                                                            {
                                                               §§push(int((§§pop()[§§pop()] as Array).length));
                                                               if(_loc20_ || param2)
                                                               {
                                                                  _loc10_ = §§pop();
                                                                  if(!(_loc19_ && param1))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§>P§);
                                                                        if(_loc20_ || param1)
                                                                        {
                                                                           if(§§pop() != §^7§)
                                                                           {
                                                                              addr196:
                                                                              §§push(0);
                                                                              if(_loc20_ || param1)
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    _loc11_ = §§pop();
                                                                                    if(_loc20_ || param1)
                                                                                    {
                                                                                       if(true)
                                                                                       {
                                                                                          §§push(_loc11_);
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             addr957:
                                                                                             if(§§pop() < (param1[_loc3_] as Array).length)
                                                                                             {
                                                                                                addr371:
                                                                                                §§push(param1);
                                                                                                break loop5;
                                                                                             }
                                                                                             if(_loc20_ || this)
                                                                                             {
                                                                                                _loc8_.§9!+§("");
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                addr978:
                                                                                                _loc7_.§`I§(this.§6V§,this.§6z§,this.§!Q§,this.§ set§ * this.§>W§,this.§ set§ * this.§<-§,this.§'t§,this.§ set§);
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                §§goto(addr1013);
                                                                                             }
                                                                                             §§goto(addr978);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr954:
                                                                                       }
                                                                                       continue;
                                                                                       break loop3;
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                              }
                                                                              break loop3;
                                                                           }
                                                                           if(!_loc19_)
                                                                           {
                                                                              if(!_loc20_)
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                              §§push(this.§=!2§);
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(_loc10_);
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    §§push(§§pop() - 1);
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       §§push(§§pop() * this.§>W§);
                                                                                    }
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       continue loop1;
                                                                                    }
                                                                                    addr252:
                                                                                    §§push(2);
                                                                                 }
                                                                                 §§push(§§pop() / §§pop());
                                                                                 continue loop1;
                                                                              }
                                                                              §§goto(addr252);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr1013:
                                                                              §§push(_loc3_);
                                                                              if(_loc20_)
                                                                              {
                                                                                 addr1016:
                                                                                 §§push(§§pop() + 1);
                                                                                 if(!(_loc19_ && param2))
                                                                                 {
                                                                                    break loop3;
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr1025:
                                                                           _loc3_ = §§pop();
                                                                           continue loop0;
                                                                        }
                                                                        §§goto(addr957);
                                                                     }
                                                                     continue loop1;
                                                                     addr218:
                                                                  }
                                                                  §§goto(addr1013);
                                                               }
                                                               break loop3;
                                                            }
                                                            addr374:
                                                            _loc12_ = ((§§pop()[§§pop()] as Array)[_loc11_] as Array)[0] as XML;
                                                            if(!(_loc19_ && this))
                                                            {
                                                               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
                                                               {
                                                                  if(!_loc19_)
                                                                  {
                                                                     _loc7_.§4!W§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
                                                                     if(_loc20_)
                                                                     {
                                                                        addr440:
                                                                     }
                                                                  }
                                                                  addr454:
                                                                  _loc13_ = _loc7_.§4!W§[_loc7_.§4!W§.length - 1] as UIRepeaterButtonRovio;
                                                                  if(_loc20_ || param2)
                                                                  {
                                                                     §§push(param1);
                                                                     if(!_loc19_)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(_loc20_ || param1)
                                                                        {
                                                                           if(((§§pop()[§§pop()] as Array)[_loc11_] as Array)[1] != null)
                                                                           {
                                                                              if(_loc20_)
                                                                              {
                                                                                 addr512:
                                                                                 _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                                                                                 if(_loc20_ || param2)
                                                                                 {
                                                                                    _loc13_.setIcon(_loc14_,this.§"7§);
                                                                                    loop38:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§9n§);
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          if(§§pop() == §7![§)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          addr601:
                                                                                          addr601:
                                                                                          §§push(this.§'t§);
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             §§push(1);
                                                                                             if(!(_loc19_ && param1))
                                                                                             {
                                                                                                if(§§pop() == §§pop())
                                                                                                {
                                                                                                   if(_loc20_)
                                                                                                   {
                                                                                                      _loc13_.x = _loc9_ + _loc11_ * this.§>W§;
                                                                                                      if(_loc20_)
                                                                                                      {
                                                                                                         §§push(_loc13_);
                                                                                                         §§push(this.§9a§);
                                                                                                         if(_loc20_ || this)
                                                                                                         {
                                                                                                            §§push(§§pop() + _loc11_ * this.§<-§);
                                                                                                         }
                                                                                                         §§pop().y = §§pop();
                                                                                                         loop35:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            loop10:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc8_.§#!0§(_loc13_);
                                                                                                               loop11:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                     §§push(_loc11_);
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        if(_loc20_)
                                                                                                                        {
                                                                                                                           if(_loc20_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + 1);
                                                                                                                              if(_loc20_)
                                                                                                                              {
                                                                                                                                 addr643:
                                                                                                                                 if(_loc20_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    addr651:
                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                    if(!(_loc19_ && param1))
                                                                                                                                    {
                                                                                                                                       _loc11_ = §§pop();
                                                                                                                                       if(!(_loc20_ || param1))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(_loc20_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc19_ && param1))
                                                                                                                                          {
                                                                                                                                             if(true)
                                                                                                                                             {
                                                                                                                                                break loop10;
                                                                                                                                             }
                                                                                                                                             continue loop10;
                                                                                                                                          }
                                                                                                                                          loop22:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc19_)
                                                                                                                                             {
                                                                                                                                                continue loop35;
                                                                                                                                             }
                                                                                                                                             §§push(_loc11_);
                                                                                                                                             if(_loc20_ || param2)
                                                                                                                                             {
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§push(_loc16_);
                                                                                                                                                if(_loc20_)
                                                                                                                                                {
                                                                                                                                                   loop37:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§6V§);
                                                                                                                                                      if(_loc20_ || param2)
                                                                                                                                                      {
                                                                                                                                                         if(_loc20_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!(_loc19_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§'t§);
                                                                                                                                                               if(!_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  addr852:
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(!(_loc19_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc19_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                        if(_loc20_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc20_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              addr881:
                                                                                                                                                                              §§push(this.§6V§);
                                                                                                                                                                              if(_loc20_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 addr891:
                                                                                                                                                                                 §§push(§§pop() % §§pop());
                                                                                                                                                                                 if(!_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr894:
                                                                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc18_ = §§pop();
                                                                                                                                                                                       loop26:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(this.§6[§)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr741:
                                                                                                                                                                                          _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                                                                                                                                                                                          while(_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             break loop26;
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc13_);
                                                                                                                                                                                             §§push(this.§9a§);
                                                                                                                                                                                             if(_loc20_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc18_);
                                                                                                                                                                                                if(!_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * this.§<-§);
                                                                                                                                                                                                   if(!_loc19_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr722:
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      if(_loc20_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr713:
                                                                                                                                                                                                         §§push(_loc16_ * this.§6V§);
                                                                                                                                                                                                         if(!_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * this.§<-§);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc20_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc20_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop26;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop10;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr739);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr723:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr722);
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr713);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr722);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr739:
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc20_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             break loop22;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr936:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc11_);
                                                                                                                                                                                             break loop11;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr894:
                                                                                                                                                                                 }
                                                                                                                                                                                 loop23:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                                                                    addr935:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc16_ = §§pop();
                                                                                                                                                                                       §§goto(addr936);
                                                                                                                                                                                       continue loop23;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr934:
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                                                                                 §§goto(addr881);
                                                                                                                                                                              }
                                                                                                                                                                              addr919:
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(int(§§pop()));
                                                                                                                                                                              continue loop22;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr934);
                                                                                                                                                                           addr920:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr891);
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§'t§);
                                                                                                                                                                        addr906:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr904:
                                                                                                                                                                  }
                                                                                                                                                                  while(_loc20_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr919);
                                                                                                                                                                        §§push(this.§6V§);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr920);
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr891);
                                                                                                                                                                  }
                                                                                                                                                                  addr933:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr906);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr852);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr933);
                                                                                                                                                         }
                                                                                                                                                         addr932:
                                                                                                                                                      }
                                                                                                                                                      addr903:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr904);
                                                                                                                                                         continue loop37;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr823:
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc19_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr903);
                                                                                                                                                      §§push(this.§6V§);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr932);
                                                                                                                                                      }
                                                                                                                                                      addr930:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr852);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr894);
                                                                                                                                          }
                                                                                                                                          §§push(_loc13_);
                                                                                                                                          §§push(this.§9a§);
                                                                                                                                          if(_loc20_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + _loc17_ * this.mButtonMarginY2);
                                                                                                                                          }
                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          continue loop10;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr894);
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§goto(addr651);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr930);
                                                                                                                           }
                                                                                                                           addr928:
                                                                                                                        }
                                                                                                                        §§goto(addr935);
                                                                                                                     }
                                                                                                                     §§goto(addr643);
                                                                                                                  }
                                                                                                                  §§goto(addr723);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr899);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr954);
                                                                                                         }
                                                                                                         addr953:
                                                                                                      }
                                                                                                      §§goto(addr727);
                                                                                                   }
                                                                                                   §§goto(addr953);
                                                                                                }
                                                                                                §§goto(addr928);
                                                                                                §§push(_loc11_);
                                                                                             }
                                                                                             §§goto(addr823);
                                                                                          }
                                                                                          §§goto(addr921);
                                                                                       }
                                                                                       addr592:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc15_ = §§pop();
                                                                                          loop41:
                                                                                          while(true)
                                                                                          {
                                                                                             loop42:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc14_.y -= _loc14_.height / 2;
                                                                                                while(!_loc19_)
                                                                                                {
                                                                                                   if(this.§"7§ == null)
                                                                                                   {
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         _loc14_.y -= _loc15_;
                                                                                                      }
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(!_loc20_)
                                                                                                      {
                                                                                                         break loop42;
                                                                                                      }
                                                                                                      if(false)
                                                                                                      {
                                                                                                         continue loop42;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr601);
                                                                                                }
                                                                                                continue loop41;
                                                                                             }
                                                                                             continue loop38;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(2);
                                                                                    if(_loc20_ || param2)
                                                                                    {
                                                                                       §§push(int(§§pop()));
                                                                                    }
                                                                                    §§goto(addr592);
                                                                                 }
                                                                              }
                                                                              §§goto(addr741);
                                                                           }
                                                                           §§goto(addr601);
                                                                        }
                                                                     }
                                                                     §§goto(addr512);
                                                                  }
                                                                  §§goto(addr771);
                                                               }
                                                               _loc7_.§4!W§.push(new param2(_loc12_,_loc7_,new this.§'w§() as MovieClip));
                                                               §§goto(addr454);
                                                            }
                                                            §§goto(addr440);
                                                         }
                                                         addr297:
                                                      }
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr374);
                                                      §§goto(addr371);
                                                   }
                                                   addr294:
                                                }
                                                §§goto(addr1013);
                                             }
                                             §§goto(addr218);
                                          }
                                          §§goto(addr374);
                                       }
                                       §§goto(addr297);
                                    }
                                    §§goto(addr1016);
                                 }
                                 break;
                              }
                              §§goto(addr1025);
                           }
                        }
                     }
                     §§goto(addr978);
                  }
                  §§goto(addr294);
               }
               return;
            }
            §§goto(addr76);
         }
         §§goto(addr113);
      }
      
      public function get §4s§() : int
      {
         return this.§6V§;
      }
      
      public function get §9j§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§4s§);
            if(_loc2_)
            {
               if(§§pop() == 0)
               {
                  if(_loc2_ || this)
                  {
                     §§push(0);
                  }
                  else
                  {
                     §§goto(addr44);
                  }
               }
               §§goto(addr44);
            }
            return §§pop();
         }
         addr44:
         §§push(this.§9k§(this.§5!8§).§[A§.length / this.§4s§);
         if(!_loc1_)
         {
            return §§pop() + 1;
         }
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:UIButtonGroupRovio = null;
         var _loc4_:UIRepeaterTabRovio = getItemByName(this.§5!8§) as UIRepeaterTabRovio;
         if(_loc7_ || this)
         {
            §§push(param2);
            loop0:
            while(§§pop().toUpperCase() != "SCROLL_LEFT")
            {
               §§push(param2);
               loop1:
               while(true)
               {
                  if(!(_loc7_ || param2))
                  {
                     continue loop0;
                  }
                  if(§§pop().toUpperCase() == "SCROLL_RIGHT")
                  {
                     if(!_loc6_)
                     {
                        addr231:
                        if(_loc4_)
                        {
                           addr232:
                           _loc4_.§3!Q§(_loc4_.§3!&§ + 1);
                           do
                           {
                              this.§7N§();
                           }
                           while(!(_loc7_ || this));
                           
                           addr239:
                        }
                        break;
                     }
                     §§goto(addr239);
                  }
                  else
                  {
                     §§push(param2);
                     if(_loc6_)
                     {
                        continue;
                     }
                     §§push(§§pop().length > 0);
                     if(!(_loc6_ && param2))
                     {
                        §§push(Boolean(§§pop()));
                     }
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§pop();
                                    if(_loc7_ || param2)
                                    {
                                       if(_loc6_ && param3)
                                       {
                                          break loop0;
                                       }
                                       while(true)
                                       {
                                          §§push(param1);
                                          loop7:
                                          while(true)
                                          {
                                             §§push(§§pop() == UIEventListenerRovio.LISTENER_EVENT_MOUSE_DOWN);
                                             loop8:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc7_)
                                                {
                                                   if(!(_loc7_ || this))
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop());
                                                   loop9:
                                                   for(; !(_loc6_ && this); if(_loc6_ && param2)
                                                   {
                                                      continue;
                                                   },if(_loc6_)
                                                   {
                                                      continue loop4;
                                                   },if(§§pop())
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§goto(addr90);
                                                      }
                                                      §§goto(addr275);
                                                   },§§goto(addr276))
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop10:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc7_ || param2)
                                                                  {
                                                                     §§pop();
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc6_ && param2))
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(param1);
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 §§push(§§pop() == UIEventListenerRovio.LISTENER_EVENT_MOUSE_UP);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             break loop12;
                                                                                          }
                                                                                          continue loop12;
                                                                                       }
                                                                                       addr90:
                                                                                    }
                                                                                 }
                                                                                 if(_loc7_ || param2)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc7_ || param2)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   continue loop9;
                                                                                                }
                                                                                                continue loop10;
                                                                                             }
                                                                                             continue loop9;
                                                                                          }
                                                                                          addr276:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             break loop5;
                                                                                          }
                                                                                          break loop1;
                                                                                          addr66:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr260:
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          addr261:
                                                                                          _loc4_.§3!Q§(_loc4_.§3!&§ - 1);
                                                                                          while(true)
                                                                                          {
                                                                                             this.§7N§();
                                                                                             if(_loc6_ && param2)
                                                                                             {
                                                                                                break loop12;
                                                                                             }
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       break loop1;
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 continue loop8;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           §§goto(addr232);
                                                                        }
                                                                        §§goto(addr205);
                                                                     }
                                                                     addr279:
                                                                     _loc5_ = this.§9k§((param3 as UIComponentRovio).mParentContainer.mName.toUpperCase());
                                                                     if(_loc7_ || this)
                                                                     {
                                                                        §§push(Boolean(_loc5_));
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc7_ || param1)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§pop();
                                                                                 if(_loc7_ || this)
                                                                                 {
                                                                                    addr321:
                                                                                    §§push(param3 is UIRepeaterButtonRovio);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       addr338:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc6_ && param3))
                                                                                          {
                                                                                             addr346:
                                                                                             _loc5_.§9!+§((param3 as UIComponentRovio).mName.toUpperCase());
                                                                                             break loop1;
                                                                                          }
                                                                                          break loop1;
                                                                                       }
                                                                                       break loop1;
                                                                                    }
                                                                                    §§goto(addr338);
                                                                                 }
                                                                                 §§goto(addr346);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr338);
                                                                     }
                                                                     §§goto(addr321);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr231);
                                                                  }
                                                               }
                                                               §§goto(addr231);
                                                               addr137:
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr66);
                                                      }
                                                      §§goto(addr276);
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   continue loop3;
                                                }
                                                §§goto(addr137);
                                             }
                                             continue loop5;
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr361);
                              }
                              §§goto(addr276);
                           }
                        }
                     }
                  }
                  §§goto(addr231);
               }
               super.containerEventOccured(param1,param2,param3);
               addr361:
               return;
            }
            §§goto(addr260);
            §§push(Boolean(_loc4_));
         }
         §§goto(addr279);
      }
      
      public function §3!§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:UIRepeaterTabRovio = getItemByName(param1) as UIRepeaterTabRovio;
         if(!_loc5_)
         {
            if(_loc3_)
            {
               loop0:
               while(true)
               {
                  _loc3_.§3!Q§(param2);
                  addr77:
                  while(true)
                  {
                     this.§7N§();
                     if(!(_loc5_ && param2))
                     {
                        if(_loc4_ || this)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr47);
               }
            }
            addr47:
            return;
         }
         §§goto(addr77);
      }
      
      public function §9k§(param1:String) : UIButtonGroupRovio
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(0);
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() >= this.§->§.length)
               {
                  if(_loc4_ || _loc3_)
                  {
                     break;
                  }
                  loop1:
                  while(_loc3_ && this)
                  {
                     while(true)
                     {
                        _loc2_ = §§pop();
                        continue loop1;
                     }
                  }
                  continue;
               }
               if(param1.toUpperCase() == (this.§->§[_loc2_] as UIButtonGroupRovio).mName.toUpperCase())
               {
                  §§goto(addr105);
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc3_)
                  {
                     §§push(§§pop() + 1);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(int(§§pop()));
                     }
                  }
               }
            }
            §§goto(addr72);
         }
         if(_loc4_ || param1)
         {
            return null;
         }
         addr105:
         return this.§->§[_loc2_] as UIButtonGroupRovio;
      }
      
      public function § v§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            this.§5!8§ = param1;
         }
         §§push(0);
         if(_loc4_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(!_loc3_)
               {
                  if(§§pop() >= §4!W§.length)
                  {
                     if(!(_loc3_ && param1))
                     {
                        this.§7N§();
                     }
                     if(!_loc4_)
                     {
                        continue;
                     }
                     if(_loc4_ || _loc3_)
                     {
                        if(!(_loc3_ && this))
                        {
                           if(!_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 if((§4!W§[_loc2_] as UIRepeaterTabRovio).mName.toUpperCase() != param1.toUpperCase())
                                 {
                                    (§4!W§[_loc2_] as UIRepeaterTabRovio).setActiveStatus(false);
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc4_ || this)
                                          {
                                             if(_loc3_ && param1)
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§@`§);
                                                   loop3:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         continue;
                                                      }
                                                      while(true)
                                                      {
                                                         this.§'M§.x = (§4!W§[_loc2_] as UIRepeaterTabRovio).x + this.§0!3§;
                                                         addr225:
                                                         while(true)
                                                         {
                                                            this.§'M§.width = (§4!W§[_loc2_] as UIRepeaterTabRovio).width + this.§1w§;
                                                            addr206:
                                                            while(true)
                                                            {
                                                               continue loop3;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§push(_loc2_);
                                             if(_loc4_)
                                             {
                                                addr89:
                                                _loc2_ = int(§§pop() + 1);
                                                continue loop0;
                                             }
                                             §§goto(addr89);
                                          }
                                          §§goto(addr167);
                                       }
                                       §§goto(addr146);
                                    }
                                    addr104:
                                 }
                                 §§goto(addr258);
                              }
                           }
                           §§goto(addr211);
                        }
                        §§goto(addr206);
                     }
                     §§goto(addr104);
                  }
                  else
                  {
                     §§push(§4!W§[_loc2_] is UIRepeaterTabRovio);
                  }
                  §§goto(addr245);
               }
            }
            §§goto(addr89);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:UIButtonGroupRovio = null;
         if(!(_loc5_ && param1))
         {
            super.setEnabled(param1);
         }
         for each(_loc2_ in this.§->§)
         {
            if(_loc6_)
            {
               _loc2_.setEnabled(param1);
            }
         }
      }
      
      public function §7N§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(getItemByName("Button_Scroll1") == null);
            if(_loc3_)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop());
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(!(_loc2_ && this))
                     {
                        addr56:
                        §§pop();
                        if(!(_loc2_ && this))
                        {
                           §§push(getItemByName("Button_Scroll2") == null);
                           if(!_loc2_)
                           {
                              addr72:
                              if(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    §§goto(addr75);
                                 }
                              }
                           }
                           §§goto(addr72);
                        }
                        var _loc1_:UIRepeaterTabRovio = getItemByName(this.§5!8§) as UIRepeaterTabRovio;
                        if(_loc3_ || this)
                        {
                           if(_loc1_)
                           {
                              if(!_loc2_)
                              {
                                 §§push(_loc1_.§3!&§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(0);
                                    loop7:
                                    while(true)
                                    {
                                       if(§§pop() <= §§pop())
                                       {
                                          (getItemByName("Button_Scroll1") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§1!M§);
                                          addr210:
                                          while(true)
                                          {
                                             addr175:
                                             addr93:
                                             loop2:
                                             while(true)
                                             {
                                                §§push(_loc1_.§3!&§);
                                                if(_loc2_ && _loc1_)
                                                {
                                                   continue loop6;
                                                }
                                                §§push(_loc1_.§37§);
                                                if(!_loc3_)
                                                {
                                                   continue loop7;
                                                }
                                                if(§§pop() >= §§pop() - 1)
                                                {
                                                   (getItemByName("Button_Scroll2") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§1!M§);
                                                   addr174:
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      (getItemByName("Button_Scroll2") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                      while(true)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            break loop2;
                                                         }
                                                         addr242:
                                                         addr242:
                                                         while(true)
                                                         {
                                                            (getItemByName("Button_Scroll1") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                         }
                                                      }
                                                      addr205:
                                                   }
                                                }
                                             }
                                             return;
                                             §§goto(addr210);
                                          }
                                          addr232:
                                       }
                                       §§goto(addr242);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr175);
                              }
                           }
                           else
                           {
                              (getItemByName("Button_Scroll1") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§1!M§);
                              while(!_loc2_)
                              {
                                 (getItemByName("Button_Scroll2") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§1!M§);
                                 if(_loc2_)
                                 {
                                    continue;
                                 }
                                 if(!(_loc2_ && this))
                                 {
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       if(_loc2_ && _loc2_)
                                       {
                                          §§goto(addr232);
                                       }
                                       §§goto(addr93);
                                    }
                                    §§goto(addr192);
                                 }
                                 §§goto(addr205);
                              }
                           }
                           §§goto(addr174);
                        }
                        §§goto(addr242);
                     }
                  }
               }
               §§goto(addr72);
            }
            §§goto(addr56);
         }
         addr75:
      }
      
      public function §2!0§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:UIRepeaterTabRovio = null;
         var _loc1_:* = int(§4!W§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = §4!W§[_loc1_] as UIRepeaterTabRovio;
            if(!_loc4_)
            {
               if(_loc2_)
               {
                  if(!(_loc4_ && this))
                  {
                     _loc2_.clear();
                  }
                  loop1:
                  while(true)
                  {
                     addr73:
                     while(true)
                     {
                        §4!W§.splice(_loc1_,1);
                        addr80:
                        while(_loc3_)
                        {
                        }
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc3_)
                  {
                     §§push(§§pop() - 1);
                     if(_loc3_ || _loc1_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
                  _loc1_ = §§pop();
                  if(!(_loc4_ && this))
                  {
                     while(false)
                     {
                        §§goto(addr73);
                     }
                     continue loop0;
                     addr71:
                  }
                  §§goto(addr80);
               }
            }
            §§goto(addr71);
         }
         if(_loc3_ || _loc1_)
         {
            this.§ v§("");
         }
      }
      
      public function §9!!§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:UIButtonGroupRovio = null;
         for each(_loc1_ in this.§->§)
         {
            if(!(_loc5_ && _loc1_))
            {
               _loc1_.§9!!§();
            }
         }
      }
      
      public function §4!i§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§9k§(this.§5!8§));
            while(§§pop() != null)
            {
               §§push(this.§9k§(this.§5!8§));
               if(_loc2_)
               {
                  return §§pop().§1U§();
               }
            }
         }
         Log.log("ERROR! Tried to get selections for noninited repeater!");
         return new Array();
      }
      
      public function §4!D§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§9k§(this.§5!8§).§4!D§(param1);
         }
      }
      
      public function §+V§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§9k§(this.§5!8§).§+V§(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.clear();
            loop0:
            while(true)
            {
               this.§'w§ = null;
               while(true)
               {
                  this.§->§ = null;
                  while(_loc2_ || _loc2_)
                  {
                     continue loop0;
                     this.§'Y§ = null;
                     if(!_loc1_)
                     {
                        return;
                        addr55:
                     }
                  }
               }
            }
         }
         §§goto(addr55);
      }
   }
}
