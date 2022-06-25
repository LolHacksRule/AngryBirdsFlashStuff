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
         }
         do
         {
            §7![§ = 1;
            do
            {
               §=8§ = 2;
            }
            while(_loc1_);
            
         }
         while(_loc1_);
         
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
          * Instruction count: 1514
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
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:* = 0;
         if(!_loc19_)
         {
            if(param2 == null)
            {
               if(!(_loc19_ && param1))
               {
                  param2 = UIRepeaterButtonRovio;
               }
               §§goto(addr103);
            }
            this.§->§ = new Vector.<UIButtonGroupRovio>();
            if(!_loc19_)
            {
               this.§2!0§();
               if(!_loc19_)
               {
                  §§push(param1);
                  if(!(_loc19_ && this))
                  {
                     if(§§pop() == null)
                     {
                        if(!(_loc19_ && param2))
                        {
                           addr103:
                           param1 = getParentView().getRepeaterDataXML(mName);
                           §§goto(addr110);
                        }
                        §§goto(addr113);
                     }
                     addr110:
                     §§goto(addr111);
                  }
                  addr111:
                  if(!param1)
                  {
                     addr113:
                     param1 = new Array();
                  }
                  §§push(0);
                  if(!(_loc19_ && this))
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  loop0:
                  while(true)
                  {
                     if(_loc3_ >= param1.length)
                     {
                        if(!_loc19_)
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
                     if(!(_loc20_ || param2))
                     {
                        break;
                     }
                     _loc5_ = new MovieClip();
                     _loc6_ = <Container/>;
                     if(!(_loc19_ && this))
                     {
                        _loc6_.@name = _loc4_;
                     }
                     _loc7_ = new UIRepeaterTabRovio(_loc6_,this,null,_loc5_);
                     if(!(_loc19_ && param1))
                     {
                        §4!W§.push(_loc7_);
                     }
                     _loc8_ = new UIButtonGroupRovio(this.§;t§,_loc4_);
                     if(!_loc19_)
                     {
                        this.§->§.push(_loc8_);
                        if(!(_loc19_ && param2))
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
                                    if(_loc20_)
                                    {
                                       §§push(int(§§pop()));
                                       if(_loc20_ || param2)
                                       {
                                          _loc10_ = §§pop();
                                          if(_loc20_ || param1)
                                          {
                                             §§push(param1);
                                             if(!_loc19_)
                                             {
                                                §§push(_loc3_);
                                                if(!_loc19_)
                                                {
                                                   if((§§pop()[§§pop()] as Array).length < _loc10_)
                                                   {
                                                      addr962:
                                                      if(!_loc19_)
                                                      {
                                                         §§push(param1);
                                                         if(_loc20_ || param1)
                                                         {
                                                            §§push(_loc3_);
                                                            if(!(_loc19_ && this))
                                                            {
                                                               addr305:
                                                               §§push(int((§§pop()[§§pop()] as Array).length));
                                                               if(_loc20_ || param2)
                                                               {
                                                                  if(_loc19_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  _loc10_ = §§pop();
                                                                  if(_loc20_ || this)
                                                                  {
                                                                     loop4:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§>P§);
                                                                        if(_loc20_)
                                                                        {
                                                                           if(§§pop() == §^7§)
                                                                           {
                                                                              if(!_loc19_)
                                                                              {
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§push(this.§=!2§);
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    §§push(_loc10_);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       §§push(§§pop() - 1);
                                                                                       if(_loc20_ || this)
                                                                                       {
                                                                                          §§push(§§pop() * this.§>W§);
                                                                                       }
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       addr259:
                                                                                       §§push(2);
                                                                                    }
                                                                                    §§push(§§pop() / §§pop());
                                                                                    continue loop1;
                                                                                 }
                                                                                 §§goto(addr259);
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc7_.§`I§(this.§6V§,this.§6z§,this.§!Q§,this.§ set§ * this.§>W§,this.§ set§ * this.§<-§,this.§'t§,this.§ set§);
                                                                                 addr968:
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              loop6:
                                                                              while(true)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc20_ || param2)
                                                                                 {
                                                                                    §§push(int(§§pop()));
                                                                                    if(!(_loc19_ && this))
                                                                                    {
                                                                                       addr213:
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             _loc9_ = §§pop();
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop6;
                                                                                          }
                                                                                          addr1003:
                                                                                          §§push(_loc3_);
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                          }
                                                                                          §§push(int(§§pop()));
                                                                                          break loop4;
                                                                                          addr269:
                                                                                       }
                                                                                       _loc11_ = §§pop();
                                                                                       if(_loc20_ || param1)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          addr949:
                                                                                          §§push(_loc11_);
                                                                                          if(_loc20_)
                                                                                          {
                                                                                             break loop3;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr968);
                                                                                       §§goto(addr1003);
                                                                                    }
                                                                                    §§push(§§pop() + 1);
                                                                                    if(_loc20_ || param1)
                                                                                    {
                                                                                       §§goto(addr1003);
                                                                                    }
                                                                                    break loop4;
                                                                                 }
                                                                                 §§goto(addr213);
                                                                              }
                                                                           }
                                                                           §§goto(addr1003);
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr225:
                                                                  }
                                                                  §§goto(addr968);
                                                               }
                                                               _loc3_ = §§pop();
                                                               continue loop0;
                                                            }
                                                            addr374:
                                                            _loc12_ = ((§§pop()[§§pop()] as Array)[_loc11_] as Array)[0] as XML;
                                                            if(!(_loc19_ && param1))
                                                            {
                                                               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
                                                               {
                                                                  if(!(_loc19_ && this))
                                                                  {
                                                                     _loc7_.§4!W§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
                                                                     if(!(_loc19_ && this))
                                                                     {
                                                                        addr464:
                                                                        _loc13_ = _loc7_.§4!W§[_loc7_.§4!W§.length - 1] as UIRepeaterButtonRovio;
                                                                        if(!_loc19_)
                                                                        {
                                                                           §§push(param1);
                                                                           if(!_loc19_)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(_loc20_ || param2)
                                                                              {
                                                                                 if(((§§pop()[§§pop()] as Array)[_loc11_] as Array)[1] != null)
                                                                                 {
                                                                                    if(!(_loc19_ && param2))
                                                                                    {
                                                                                       addr522:
                                                                                       _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          _loc13_.setIcon(_loc14_,this.§"7§);
                                                                                          §§push(this.§9n§);
                                                                                          if(_loc20_)
                                                                                          {
                                                                                             addr611:
                                                                                             if(§§pop() == §7![§)
                                                                                             {
                                                                                                addr596:
                                                                                                §§push(2);
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   §§push(int(§§pop()));
                                                                                                }
                                                                                             }
                                                                                             §§push(this.§'t§);
                                                                                             if(!(_loc19_ && param2))
                                                                                             {
                                                                                                §§push(1);
                                                                                                if(_loc20_ || param2)
                                                                                                {
                                                                                                   if(§§pop() == §§pop())
                                                                                                   {
                                                                                                      if(_loc20_)
                                                                                                      {
                                                                                                         _loc13_.x = _loc9_ + _loc11_ * this.§>W§;
                                                                                                         if(!(_loc19_ && this))
                                                                                                         {
                                                                                                            §§push(_loc13_);
                                                                                                            §§push(this.§9a§);
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               §§push(§§pop() + _loc11_ * this.§<-§);
                                                                                                            }
                                                                                                            §§pop().y = §§pop();
                                                                                                            addr685:
                                                                                                            _loc8_.§#!0§(_loc13_);
                                                                                                            addr948:
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     §§push(_loc11_);
                                                                                                                     if(_loc20_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + 1);
                                                                                                                        if(!(_loc19_ && this))
                                                                                                                        {
                                                                                                                           §§push(int(§§pop()));
                                                                                                                        }
                                                                                                                     }
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        _loc11_ = §§pop();
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           if(_loc20_ || param2)
                                                                                                                           {
                                                                                                                              if(_loc20_ || param1)
                                                                                                                              {
                                                                                                                                 if(!_loc19_)
                                                                                                                                 {
                                                                                                                                    if(_loc20_)
                                                                                                                                    {
                                                                                                                                       if(false)
                                                                                                                                       {
                                                                                                                                          §§goto(addr685);
                                                                                                                                       }
                                                                                                                                       §§goto(addr949);
                                                                                                                                    }
                                                                                                                                    §§goto(addr948);
                                                                                                                                 }
                                                                                                                                 addr782:
                                                                                                                                 if(!(_loc19_ && this))
                                                                                                                                 {
                                                                                                                                    addr789:
                                                                                                                                    §§push(_loc13_);
                                                                                                                                    §§push(_loc9_ + _loc18_ * this.§>W§);
                                                                                                                                    if(!(_loc19_ && param2))
                                                                                                                                    {
                                                                                                                                       §§push(_loc16_ * this.§6V§);
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * this.§>W§);
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                    }
                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                    §§push(_loc13_);
                                                                                                                                    §§push(this.§9a§);
                                                                                                                                    if(_loc20_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + _loc17_ * this.mButtonMarginY2);
                                                                                                                                    }
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    addr770:
                                                                                                                                    if(!(_loc19_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§goto(addr685);
                                                                                                                                    }
                                                                                                                                    if(this.§6[§)
                                                                                                                                    {
                                                                                                                                       §§goto(addr782);
                                                                                                                                    }
                                                                                                                                    _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                                                                                                                                    §§push(_loc13_);
                                                                                                                                    §§push(this.§9a§);
                                                                                                                                    if(_loc20_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc18_);
                                                                                                                                       if(!(_loc19_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * this.§<-§);
                                                                                                                                          if(!(_loc19_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(_loc20_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                addr730:
                                                                                                                                                §§push(_loc16_ * this.§6V§);
                                                                                                                                                if(_loc20_ || param1)
                                                                                                                                                {
                                                                                                                                                   addr740:
                                                                                                                                                   §§push(§§pop() * this.§<-§);
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                             }
                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                             addr745:
                                                                                                                                             §§goto(addr685);
                                                                                                                                          }
                                                                                                                                          §§goto(addr740);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr730);
                                                                                                                                    addr895:
                                                                                                                                    addr814:
                                                                                                                                    addr757:
                                                                                                                                 }
                                                                                                                                 addr924:
                                                                                                                                 §§push(_loc11_);
                                                                                                                                 if(!(_loc19_ && param2))
                                                                                                                                 {
                                                                                                                                    if(!(_loc19_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(_loc16_);
                                                                                                                                       if(_loc20_ || this)
                                                                                                                                       {
                                                                                                                                          if(_loc20_)
                                                                                                                                          {
                                                                                                                                             §§push(this.§6V§);
                                                                                                                                             if(_loc20_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc19_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!_loc19_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§'t§);
                                                                                                                                                      if(!_loc19_)
                                                                                                                                                      {
                                                                                                                                                         addr860:
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!_loc19_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            if(!(_loc19_ && param2))
                                                                                                                                                            {
                                                                                                                                                               if(!_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§6V§);
                                                                                                                                                                  if(!(_loc19_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     addr882:
                                                                                                                                                                     §§push(§§pop() % §§pop());
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        addr885:
                                                                                                                                                                        §§push(int(§§pop()));
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc19_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              _loc18_ = §§pop();
                                                                                                                                                                              §§goto(addr895);
                                                                                                                                                                           }
                                                                                                                                                                           addr935:
                                                                                                                                                                           _loc16_ = §§pop() / (this.§6V§ * this.§'t§);
                                                                                                                                                                           addr933:
                                                                                                                                                                           §§push(_loc11_);
                                                                                                                                                                           if(_loc20_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              addr908:
                                                                                                                                                                              §§push(_loc16_ * this.§6V§);
                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc20_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr916:
                                                                                                                                                                                    §§push(§§pop() - §§pop() * this.§'t§);
                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr923:
                                                                                                                                                                                       _loc17_ = §§pop() / this.§6V§;
                                                                                                                                                                                       addr922:
                                                                                                                                                                                       §§goto(addr924);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr922);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr933);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr916);
                                                                                                                                                                           }
                                                                                                                                                                           addr934:
                                                                                                                                                                           addr932:
                                                                                                                                                                           addr930:
                                                                                                                                                                           addr936:
                                                                                                                                                                           addr928:
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr923);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr934);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr882);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr916);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr860);
                                                                                                                                                }
                                                                                                                                                §§goto(addr932);
                                                                                                                                             }
                                                                                                                                             §§goto(addr908);
                                                                                                                                          }
                                                                                                                                          §§goto(addr930);
                                                                                                                                       }
                                                                                                                                       §§goto(addr908);
                                                                                                                                    }
                                                                                                                                    §§goto(addr935);
                                                                                                                                 }
                                                                                                                                 §§goto(addr885);
                                                                                                                              }
                                                                                                                              §§goto(addr814);
                                                                                                                           }
                                                                                                                           §§goto(addr770);
                                                                                                                        }
                                                                                                                        §§goto(addr685);
                                                                                                                     }
                                                                                                                     §§goto(addr885);
                                                                                                                     addr696:
                                                                                                                  }
                                                                                                                  §§goto(addr936);
                                                                                                               }
                                                                                                               §§goto(addr757);
                                                                                                            }
                                                                                                            §§goto(addr745);
                                                                                                         }
                                                                                                         §§goto(addr770);
                                                                                                      }
                                                                                                      §§goto(addr789);
                                                                                                   }
                                                                                                   §§goto(addr928);
                                                                                                   §§push(_loc11_);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr935);
                                                                                          }
                                                                                          _loc15_ = §§pop();
                                                                                          addr601:
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             addr577:
                                                                                             _loc14_.y -= _loc14_.height / 2;
                                                                                             addr587:
                                                                                             if(this.§"7§ == null)
                                                                                             {
                                                                                                if(_loc20_ || this)
                                                                                                {
                                                                                                   if(!(_loc19_ && param2))
                                                                                                   {
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         _loc14_.y -= _loc15_;
                                                                                                         addr568:
                                                                                                         if(_loc20_ || this)
                                                                                                         {
                                                                                                            addr575:
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr577);
                                                                                                            }
                                                                                                            §§goto(addr611);
                                                                                                         }
                                                                                                         §§goto(addr587);
                                                                                                      }
                                                                                                      §§goto(addr596);
                                                                                                   }
                                                                                                   §§goto(addr601);
                                                                                                }
                                                                                                §§goto(addr568);
                                                                                             }
                                                                                             §§goto(addr611);
                                                                                          }
                                                                                          addr610:
                                                                                          §§goto(addr610);
                                                                                       }
                                                                                       §§goto(addr575);
                                                                                    }
                                                                                    §§goto(addr696);
                                                                                 }
                                                                                 §§goto(addr611);
                                                                              }
                                                                           }
                                                                           §§goto(addr522);
                                                                        }
                                                                        §§goto(addr789);
                                                                     }
                                                                  }
                                                                  §§goto(addr464);
                                                               }
                                                               _loc7_.§4!W§.push(new param2(_loc12_,_loc7_,new this.§'w§() as MovieClip));
                                                            }
                                                            §§goto(addr464);
                                                         }
                                                         addr373:
                                                         §§goto(addr374);
                                                         §§push(_loc3_);
                                                      }
                                                      _loc8_.§9!+§("");
                                                      if(!_loc19_)
                                                      {
                                                         §§goto(addr968);
                                                      }
                                                      §§goto(addr1003);
                                                   }
                                                   §§goto(addr225);
                                                }
                                                §§goto(addr305);
                                             }
                                             §§goto(addr373);
                                          }
                                          §§goto(addr968);
                                       }
                                       §§goto(addr1003);
                                    }
                                    break;
                                 }
                                 if(§§pop() < (param1[_loc3_] as Array).length)
                                 {
                                    §§goto(addr373);
                                    §§push(param1);
                                 }
                                 if(_loc20_)
                                 {
                                    §§goto(addr962);
                                 }
                                 §§goto(addr968);
                              }
                           }
                           addr369:
                        }
                        §§goto(addr962);
                     }
                     §§goto(addr369);
                  }
                  return;
               }
            }
            §§goto(addr113);
         }
         §§goto(addr103);
      }
      
      public function get §4s§() : int
      {
         return this.§6V§;
      }
      
      public function get §9j§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§4s§);
            if(!_loc1_)
            {
               if(§§pop() == 0)
               {
                  if(!_loc1_)
                  {
                     §§push(0);
                  }
                  else
                  {
                     §§goto(addr54);
                  }
               }
               §§goto(addr54);
            }
            return §§pop();
         }
         addr54:
         §§push(this.§9k§(this.§5!8§).§[A§.length / this.§4s§);
         if(!(_loc1_ && _loc1_))
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
         if(!_loc6_)
         {
            §§push(param2);
            loop0:
            while(§§pop().toUpperCase() != "SCROLL_LEFT")
            {
               §§push(param2);
               loop1:
               while(true)
               {
                  if(_loc6_ && param3)
                  {
                     continue loop0;
                  }
                  if(§§pop().toUpperCase() == "SCROLL_RIGHT")
                  {
                     if(_loc7_ || this)
                     {
                        addr194:
                        if(_loc4_)
                        {
                           addr195:
                           _loc4_.§3!Q§(_loc4_.§3!&§ + 1);
                           if(!(_loc6_ && param1))
                           {
                              this.§7N§();
                              break;
                           }
                           §§goto(addr331);
                        }
                        addr325:
                        super.containerEventOccured(param1,param2,param3);
                        addr331:
                        return;
                        addr126:
                     }
                     §§goto(addr195);
                  }
                  else
                  {
                     §§push(param2);
                     if(!_loc7_)
                     {
                        continue;
                     }
                     §§push(§§pop().length > 0);
                     if(_loc7_)
                     {
                        §§push(Boolean(§§pop()));
                        loop2:
                        while(true)
                        {
                           if(_loc7_)
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
                                       if(_loc7_ || param2)
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             addr151:
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   break loop1;
                                                }
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == UIEventListenerRovio.LISTENER_EVENT_MOUSE_DOWN);
                                                      loop7:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         addr117:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            loop9:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               addr119:
                                                               addr57:
                                                               while(!§§pop())
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc7_)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     addr249:
                                                                     _loc5_ = this.§9k§((param3 as UIComponentRovio).mParentContainer.mName.toUpperCase());
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(Boolean(_loc5_));
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc7_ || param3)
                                                                              {
                                                                                 addr278:
                                                                                 §§pop();
                                                                                 if(!(_loc6_ && param1))
                                                                                 {
                                                                                    §§push(param3 is UIRepeaterButtonRovio);
                                                                                    if(_loc6_ && this)
                                                                                    {
                                                                                    }
                                                                                    addr308:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!(_loc6_ && param1))
                                                                                       {
                                                                                          addr316:
                                                                                          _loc5_.§9!+§((param3 as UIComponentRovio).mName.toUpperCase());
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr325);
                                                                                 }
                                                                                 §§goto(addr316);
                                                                              }
                                                                              §§push(Boolean(§§pop()));
                                                                           }
                                                                           §§goto(addr308);
                                                                        }
                                                                        §§goto(addr278);
                                                                     }
                                                                     §§goto(addr316);
                                                                  }
                                                                  §§goto(addr325);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc7_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  if(_loc7_ || param2)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                        addr245:
                                                                        addr245:
                                                                        §§push(Boolean(§§pop()));
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr119);
                                                                  }
                                                               }
                                                               continue loop4;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr150:
                                       }
                                       addr246:
                                       if(§§pop())
                                       {
                                          if(_loc7_)
                                          {
                                             §§goto(addr249);
                                          }
                                          §§goto(addr195);
                                       }
                                       §§goto(addr325);
                                    }
                                    §§goto(addr57);
                                 }
                              }
                           }
                           else
                           {
                              §§goto(addr194);
                           }
                           §§goto(addr194);
                        }
                     }
                     §§goto(addr150);
                  }
               }
               if(_loc7_)
               {
                  §§goto(addr126);
               }
               else
               {
                  this.§7N§();
                  §§goto(addr214);
                  addr238:
               }
               §§goto(addr194);
            }
         }
         §§push(Boolean(_loc4_));
         if(_loc7_)
         {
            if(§§pop())
            {
               if(_loc7_ || this)
               {
                  _loc4_.§3!Q§(_loc4_.§3!&§ - 1);
               }
               §§goto(addr238);
            }
            §§goto(addr171);
         }
         else
         {
            §§goto(addr246);
         }
      }
      
      public function §3!§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:UIRepeaterTabRovio = getItemByName(param1) as UIRepeaterTabRovio;
         if(!(_loc4_ && this))
         {
            if(_loc3_)
            {
               do
               {
                  _loc3_.§3!Q§(param2);
                  do
                  {
                     this.§7N§();
                  }
                  while(!_loc5_);
                  
               }
               while(_loc4_);
               
               addr65:
            }
            return;
         }
         §§goto(addr65);
      }
      
      public function §9k§(param1:String) : UIButtonGroupRovio
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(0);
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         do
         {
            §§push(_loc2_);
            if(_loc3_ || _loc2_)
            {
               if(_loc3_)
               {
                  if(§§pop() >= this.§->§.length)
                  {
                     if(_loc4_)
                     {
                        continue;
                     }
                     if(_loc3_ || _loc2_)
                     {
                        return null;
                     }
                  }
                  else if(param1.toUpperCase() == (this.§->§[_loc2_] as UIButtonGroupRovio).mName.toUpperCase())
                  {
                     break;
                  }
                  §§push(_loc2_);
                  if(!(_loc4_ && param1))
                  {
                     §§push(§§pop() + 1);
                  }
               }
               §§push(int(§§pop()));
            }
            _loc2_ = §§pop();
         }
         while(!_loc4_);
         
         return this.§->§[_loc2_] as UIButtonGroupRovio;
      }
      
      public function § v§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§5!8§ = param1;
         }
         §§push(0);
         if(_loc3_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(_loc3_ || this)
               {
                  if(§§pop() >= §4!W§.length)
                  {
                     if(_loc3_)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           if(_loc3_)
                           {
                              if(!_loc4_)
                              {
                                 this.§7N§();
                                 addr67:
                                 if(_loc3_ || this)
                                 {
                                    if(_loc3_ || param1)
                                    {
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       loop12:
                                       while(true)
                                       {
                                          this.§'M§.y = (§4!W§[_loc2_] as UIRepeaterTabRovio).y + this.§=t§;
                                          loop7:
                                          while(true)
                                          {
                                             this.§'M§.height = (§4!W§[_loc2_] as UIRepeaterTabRovio).height + this.§>a§;
                                             addr145:
                                             while(true)
                                             {
                                                if(_loc3_ || this)
                                                {
                                                   while(true)
                                                   {
                                                   }
                                                   addr99:
                                                }
                                                else
                                                {
                                                   loop3:
                                                   while(true)
                                                   {
                                                      §§push(this.§@`§);
                                                      loop4:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            continue;
                                                         }
                                                         loop5:
                                                         while(true)
                                                         {
                                                            this.§'M§.x = (§4!W§[_loc2_] as UIRepeaterTabRovio).x + this.§0!3§;
                                                            loop6:
                                                            while(true)
                                                            {
                                                               this.§'M§.width = (§4!W§[_loc2_] as UIRepeaterTabRovio).width + this.§1w§;
                                                               addr196:
                                                               while(true)
                                                               {
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  continue loop6;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            continue loop12;
                                                         }
                                                         §§goto(addr99);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  if((§4!W§[_loc2_] as UIRepeaterTabRovio).mName.toUpperCase() != param1.toUpperCase())
                                                                  {
                                                                     (§4!W§[_loc2_] as UIRepeaterTabRovio).setActiveStatus(false);
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              addr86:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + 1);
                                                                                 if(_loc3_ || param1)
                                                                                 {
                                                                                    addr95:
                                                                                    §§push(int(§§pop()));
                                                                                    while(true)
                                                                                    {
                                                                                       _loc2_ = §§pop();
                                                                                       addr96:
                                                                                       while(_loc4_)
                                                                                       {
                                                                                          continue loop7;
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    addr95:
                                                                                 }
                                                                                 §§goto(addr95);
                                                                              }
                                                                           }
                                                                           addr84:
                                                                        }
                                                                     }
                                                                     addr112:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     (§4!W§[_loc2_] as UIRepeaterTabRovio).setActiveStatus(true);
                                                                     continue loop3;
                                                                  }
                                                               }
                                                               addr250:
                                                            }
                                                         }
                                                         addr249:
                                                      }
                                                   }
                                                }
                                                §§goto(addr84);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr112);
                                 }
                                 §§goto(addr96);
                              }
                              §§goto(addr250);
                           }
                           §§goto(addr196);
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr67);
                  }
                  else
                  {
                     §§push(§4!W§[_loc2_] is UIRepeaterTabRovio);
                  }
                  §§goto(addr249);
               }
               §§goto(addr86);
            }
            §§goto(addr95);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:UIButtonGroupRovio = null;
         if(!_loc6_)
         {
            super.setEnabled(param1);
         }
         for each(_loc2_ in this.§->§)
         {
            if(!(_loc6_ && this))
            {
               _loc2_.setEnabled(param1);
            }
         }
      }
      
      public function §7N§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(getItemByName("Button_Scroll1") == null);
            if(!(_loc2_ && _loc1_))
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && _loc1_))
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        addr46:
                        §§pop();
                        if(!_loc2_)
                        {
                           §§push(getItemByName("Button_Scroll2") == null);
                           if(!(_loc2_ && _loc1_))
                           {
                              addr62:
                              if(§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    §§goto(addr65);
                                 }
                              }
                           }
                           §§goto(addr62);
                        }
                        var _loc1_:UIRepeaterTabRovio = getItemByName(this.§5!8§) as UIRepeaterTabRovio;
                        if(!_loc2_)
                        {
                           if(!_loc1_)
                           {
                              (getItemByName("Button_Scroll1") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§1!M§);
                              while(_loc3_)
                              {
                                 (getItemByName("Button_Scroll2") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§1!M§);
                                 if(!_loc2_)
                                 {
                                    if(!(_loc3_ || this))
                                    {
                                       loop1:
                                       while(!_loc3_)
                                       {
                                          loop2:
                                          while(!_loc3_)
                                          {
                                             loop3:
                                             while(true)
                                             {
                                                if(_loc3_ || _loc2_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      loop4:
                                                      while(true)
                                                      {
                                                         §§push(_loc1_.§3!&§);
                                                         if(_loc3_ || this)
                                                         {
                                                            §§push(_loc1_.§37§);
                                                            if(!_loc2_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                            }
                                                            addr225:
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop() <= §§pop())
                                                            {
                                                               (getItemByName("Button_Scroll1") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§1!M§);
                                                               continue loop3;
                                                            }
                                                            while(true)
                                                            {
                                                               (getItemByName("Button_Scroll1") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                               continue loop4;
                                                            }
                                                         }
                                                      }
                                                      if(§§pop() < §§pop() - 1)
                                                      {
                                                         if(!(_loc2_ && this))
                                                         {
                                                            (getItemByName("Button_Scroll2") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                         }
                                                         continue loop2;
                                                      }
                                                      (getItemByName("Button_Scroll2") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§1!M§);
                                                      continue loop1;
                                                      addr148:
                                                   }
                                                   else
                                                   {
                                                      addr223:
                                                   }
                                                   while(true)
                                                   {
                                                   }
                                                   §§goto(addr225);
                                                }
                                                §§goto(addr227);
                                             }
                                          }
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       addr113:
                                    }
                                    return;
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr148);
                              }
                           }
                           §§goto(addr223);
                        }
                        §§goto(addr113);
                     }
                  }
               }
               §§goto(addr62);
            }
            §§goto(addr46);
         }
         addr65:
      }
      
      public function §2!0§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:UIRepeaterTabRovio = null;
         var _loc1_:* = int(§4!W§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = §4!W§[_loc1_] as UIRepeaterTabRovio;
            if(!(_loc3_ && _loc3_))
            {
               if(_loc2_)
               {
                  if(_loc4_ || _loc2_)
                  {
                     _loc2_.clear();
                     addr102:
                     loop4:
                     while(true)
                     {
                        addr69:
                        while(true)
                        {
                           §4!W§.splice(_loc1_,1);
                           addr86:
                           addr88:
                           while(!_loc4_)
                           {
                              continue loop4;
                           }
                           continue loop4;
                        }
                     }
                     addr102:
                  }
                  §§goto(addr102);
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc4_)
                  {
                     §§push(§§pop() - 1);
                     if(_loc4_)
                     {
                        addr63:
                        §§push(int(§§pop()));
                     }
                     _loc1_ = §§pop();
                     if(_loc4_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr69);
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr63);
                  §§goto(addr88);
               }
               continue;
            }
            §§goto(addr102);
         }
         if(!_loc3_)
         {
            this.§ v§("");
         }
      }
      
      public function §9!!§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:UIButtonGroupRovio = null;
         for each(_loc1_ in this.§->§)
         {
            if(_loc5_)
            {
               _loc1_.§9!!§();
            }
         }
      }
      
      public function §4!i§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§9k§(this.§5!8§));
            while(§§pop() != null)
            {
               §§push(this.§9k§(this.§5!8§));
               if(_loc2_ || this)
               {
                  return §§pop().§1U§();
               }
            }
            if(!(_loc1_ && this))
            {
               addr86:
               Log.log("ERROR! Tried to get selections for noninited repeater!");
            }
            return new Array();
         }
         §§goto(addr86);
      }
      
      public function §4!D§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§9k§(this.§5!8§).§4!D§(param1);
         }
      }
      
      public function §+V§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§9k§(this.§5!8§).§+V§(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.clear();
            do
            {
               this.§'w§ = null;
               do
               {
                  this.§->§ = null;
                  do
                  {
                     this.§'Y§ = null;
                  }
                  while(_loc2_ && _loc1_);
                  
               }
               while(!(_loc1_ || _loc2_));
               
            }
            while(_loc2_ && this);
            
         }
      }
   }
}
