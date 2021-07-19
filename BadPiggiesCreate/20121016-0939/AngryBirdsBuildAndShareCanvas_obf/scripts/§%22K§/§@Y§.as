package §"K§
{
   import §8=§.§4"+§;
   import §<!3§.§"`§;
   import flash.display.DisplayObject;
   import flash.filters.BevelFilter;
   import flash.filters.BitmapFilter;
   import flash.filters.BlurFilter;
   import flash.filters.ColorMatrixFilter;
   import flash.filters.ConvolutionFilter;
   import flash.filters.DisplacementMapFilter;
   import flash.filters.DropShadowFilter;
   import flash.filters.GlowFilter;
   import flash.filters.GradientBevelFilter;
   import flash.filters.GradientGlowFilter;
   import flash.filters.ShaderFilter;
   
   public class §@Y§ extends §4"+§
   {
      
      public static const §0!V§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §0!V§ = ["x","y","z","scaleX","scaleY","scaleZ","rotation","rotationX","rotationY","rotationZ","alpha","width","height","_bevelFilter","_blurFilter","_colorMatrixFilter","_convolutionFilter","_displacementMapFilter","_dropShadowFilter","_glowFilter","_gradientBevelFilter","_gradientGlowFilter","_shaderFilter"];
         }
      }
      
      protected var _flags:uint = 0;
      
      protected var §,_§:DisplayObjectParameter;
      
      protected var §"!c§:DisplayObject = null;
      
      protected var §-!m§:DisplayObjectParameter;
      
      public function §@Y§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§-!m§ = new DisplayObjectParameter();
            while(true)
            {
               this.§,_§ = new DisplayObjectParameter();
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            super();
            if(!(_loc1_ && _loc1_))
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public static function §>!X§(param1:§"`§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || §@Y§)
         {
            param1.§5!j§(§@Y§,DisplayObject,§0!V§);
         }
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            for(; §§pop() != "_blurFilter"; loop4:
            while(!(_loc4_ && _loc3_))
            {
               if(§§pop() != "_dropShadowFilter")
               {
                  loop5:
                  while(true)
                  {
                     §§push(param1);
                     loop6:
                     while(true)
                     {
                        if(§§pop() != "_colorMatrixFilter")
                        {
                           loop7:
                           while(true)
                           {
                              §§push(param1);
                              loop8:
                              while(§§pop() != "_bevelFilter")
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§push(param1);
                                    loop10:
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          if(!(_loc4_ && param2))
                                          {
                                             if(§§pop() != "_gradientGlowFilter")
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   loop12:
                                                   while(§§pop() != "_gradientBevelFilter")
                                                   {
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         loop14:
                                                         while(true)
                                                         {
                                                            if(_loc3_ || this)
                                                            {
                                                               if(§§pop() != "_convolutionFilter")
                                                               {
                                                                  loop15:
                                                                  do
                                                                  {
                                                                     §§push(param1);
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(_loc3_ || this)
                                                                           {
                                                                              if(§§pop() == "_displacementMapFilter")
                                                                              {
                                                                                 break;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1);
                                                                                 if(_loc4_ && param1)
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(§§pop() != "_shaderFilter")
                                                                                    {
                                                                                       return;
                                                                                    }
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(!(_loc4_ && _loc3_))
                                                                                    {
                                                                                       if(_loc3_ || param2)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                this.§9;§(param2 as BitmapFilter,ShaderFilter);
                                                                                                break;
                                                                                             }
                                                                                             return;
                                                                                             addr340:
                                                                                          }
                                                                                          return;
                                                                                          addr296:
                                                                                       }
                                                                                       continue loop15;
                                                                                    }
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       break loop16;
                                                                                    }
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!(_loc3_ || _loc3_))
                                                                                    {
                                                                                       break loop9;
                                                                                    }
                                                                                    continue loop9;
                                                                                 }
                                                                                 §§goto(addr309);
                                                                              }
                                                                              if(_loc3_)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(!(_loc4_ && param1))
                                                                                    {
                                                                                       return;
                                                                                    }
                                                                                    break loop8;
                                                                                 }
                                                                                 break loop14;
                                                                              }
                                                                              addr121:
                                                                              if(!_loc4_)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    return;
                                                                                 }
                                                                                 break loop12;
                                                                              }
                                                                              if(!(_loc3_ || param1))
                                                                              {
                                                                                 break loop13;
                                                                              }
                                                                              continue loop13;
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                     if(!(_loc3_ || _loc3_))
                                                                     {
                                                                        return;
                                                                        addr148:
                                                                     }
                                                                     if(_loc4_ && this)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     if(!_loc4_)
                                                                     {
                                                                        this.§9;§(param2 as BitmapFilter,DisplacementMapFilter);
                                                                        §§goto(addr121);
                                                                     }
                                                                     else if(_loc3_ || this)
                                                                     {
                                                                        §§goto(addr279);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr317);
                                                                     }
                                                                  }
                                                                  while(_loc3_);
                                                                  
                                                                  addr262:
                                                                  this.§9;§(param2 as BitmapFilter,ColorMatrixFilter);
                                                                  return;
                                                                  addr268:
                                                               }
                                                               break;
                                                            }
                                                            continue loop8;
                                                         }
                                                         this.§9;§(param2 as BitmapFilter,ConvolutionFilter);
                                                         §§goto(addr148);
                                                      }
                                                      while(true)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            return;
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            break loop11;
                                                         }
                                                         if(!_loc4_)
                                                         {
                                                            continue loop11;
                                                         }
                                                         addr290:
                                                         this.§9;§(param2 as BitmapFilter,DropShadowFilter);
                                                         §§goto(addr296);
                                                      }
                                                   }
                                                   if(_loc4_ && param2)
                                                   {
                                                      break loop10;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      while(true)
                                                      {
                                                         this.§9;§(param2 as BitmapFilter,GradientBevelFilter);
                                                         §§goto(addr188);
                                                      }
                                                      addr182:
                                                   }
                                                   §§goto(addr311);
                                                }
                                                while(_loc4_ && param1)
                                                {
                                                   if(_loc3_ || param2)
                                                   {
                                                      continue loop5;
                                                   }
                                                   §§goto(addr307);
                                                }
                                                return;
                                                addr219:
                                             }
                                             break;
                                          }
                                          continue loop4;
                                       }
                                       continue loop6;
                                    }
                                    if(!_loc3_)
                                    {
                                       break loop0;
                                    }
                                    this.§9;§(param2 as BitmapFilter,GradientGlowFilter);
                                    §§goto(addr219);
                                 }
                                 return;
                              }
                              if(!(_loc4_ && _loc3_))
                              {
                                 this.§9;§(param2 as BitmapFilter,BevelFilter);
                                 §§goto(addr254);
                              }
                              else
                              {
                                 §§goto(addr268);
                              }
                           }
                        }
                        §§goto(addr262);
                     }
                  }
               }
               §§goto(addr290);
            })
            {
               while(true)
               {
                  §§push(param1);
                  addr309:
                  while(true)
                  {
                     if(§§pop() == "_glowFilter")
                     {
                        addr311:
                        this.§9;§(param2 as BitmapFilter,GlowFilter);
                        return;
                        addr317:
                     }
                     else
                     {
                        addr279:
                     }
                     while(true)
                     {
                        §§push(param1);
                        continue loop0;
                     }
                  }
               }
            }
            this.§9;§(param2 as BitmapFilter,BlurFilter);
            §§goto(addr340);
         }
         §§goto(addr182);
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(param1);
            loop0:
            while(§§pop() != "x")
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  if(§§pop() != "y")
                  {
                     §§push(param1);
                     loop2:
                     while(§§pop() != "z")
                     {
                        §§push(param1);
                        loop3:
                        while(§§pop() != "scaleX")
                        {
                           §§push(param1);
                           loop4:
                           while(§§pop() != "scaleY")
                           {
                              §§push(param1);
                              loop5:
                              while(§§pop() != "scaleZ")
                              {
                                 §§push(param1);
                                 loop6:
                                 for(; §§pop() != "rotation"; if(_loc5_ && param2)
                                 {
                                    continue;
                                 },if(_loc5_)
                                 {
                                    continue loop4;
                                 },if(!_loc4_)
                                 {
                                    continue loop2;
                                 },if(§§pop() != "rotationY")
                                 {
                                    §§push(param1);
                                    while(!_loc5_)
                                    {
                                       if(§§pop() == "rotationZ")
                                       {
                                          addr695:
                                          if(!(_loc5_ && this))
                                          {
                                             this._flags |= 512;
                                             addr708:
                                             if(!(_loc5_ && param1))
                                             {
                                                addr610:
                                                §§push(this.§,_§);
                                                if(_loc4_ || param1)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         addr623:
                                                         §§push(this.§,_§);
                                                         if(_loc4_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(!(_loc5_ && param3))
                                                               {
                                                                  addr645:
                                                                  §§push(§§pop().relativeFlags);
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     addr653:
                                                                     §§push(param3);
                                                                     if(!(_loc5_ && param2))
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           addr662:
                                                                           §§push(512);
                                                                           if(_loc4_)
                                                                           {
                                                                              addr668:
                                                                              §§push(§§pop() | §§pop());
                                                                              if(!(_loc5_ && param3))
                                                                              {
                                                                                 if(!(_loc5_ && param3))
                                                                                 {
                                                                                    §§pop().relativeFlags = §§pop();
                                                                                    addr684:
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       addr595:
                                                                                       §§push(this.§,_§);
                                                                                       if(_loc4_ || param1)
                                                                                       {
                                                                                          addr603:
                                                                                          §§push(param2);
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§pop().rotationZ = §§pop();
                                                                                             addr606:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr921);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr998);
                                                                                       }
                                                                                       §§goto(addr19);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr1092:
                                                                                       §§push(this.§,_§);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr1096:
                                                                                          §§push(this.§,_§);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr1100:
                                                                                             §§push(§§pop().relativeFlags);
                                                                                             if(param3)
                                                                                             {
                                                                                                addr1102:
                                                                                                §§goto(addr1113);
                                                                                                §§push(16);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr1105);
                                                                                                §§push(0);
                                                                                             }
                                                                                             §§goto(addr19);
                                                                                          }
                                                                                          addr1196:
                                                                                          §§push(§§pop().relativeFlags);
                                                                                          §§push(param3);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr1140:
                                                                                          §§push(this.§,_§.relativeFlags);
                                                                                          §§push(param3);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr1147:
                                                                                                §§goto(addr1148);
                                                                                                §§push(8);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr1158:
                                                                                                §§push(0);
                                                                                                if(!(_loc5_ && param3))
                                                                                                {
                                                                                                   §§goto(addr1166);
                                                                                                   §§push(§§pop());
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr1279);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr19);
                                                                                          }
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          addr1198:
                                                                                          §§goto(addr1199);
                                                                                          §§push(4);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr1202);
                                                                                          §§push(0);
                                                                                       }
                                                                                       §§goto(addr1204);
                                                                                       addr1128:
                                                                                    }
                                                                                    §§goto(addr1269);
                                                                                 }
                                                                                 §§goto(addr1285);
                                                                              }
                                                                              §§goto(addr1246);
                                                                           }
                                                                           §§goto(addr1244);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr667:
                                                                           §§push(0);
                                                                        }
                                                                        §§goto(addr668);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr761:
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              addr765:
                                                                              §§push(256);
                                                                              if(_loc4_ || param2)
                                                                              {
                                                                                 if(!(_loc5_ && this))
                                                                                 {
                                                                                    addr785:
                                                                                    §§push(§§pop() | §§pop());
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(!(_loc5_ && param1))
                                                                                       {
                                                                                          if(_loc4_ || param2)
                                                                                          {
                                                                                             §§pop().relativeFlags = §§pop();
                                                                                             addr803:
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                addr720:
                                                                                                this.§,_§.rotationY = param2;
                                                                                                addr719:
                                                                                                if(_loc4_ || param2)
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§goto(addr1270);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr839);
                                                                                                }
                                                                                                §§goto(addr19);
                                                                                                addr719:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr992:
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   addr926:
                                                                                                   §§push(this.§,_§);
                                                                                                   if(!(_loc5_ && param2))
                                                                                                   {
                                                                                                      §§goto(addr935);
                                                                                                      §§push(this.§,_§);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr1073);
                                                                                                   }
                                                                                                   §§goto(addr1134);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr1140);
                                                                                                   §§push(this.§,_§);
                                                                                                   addr1183:
                                                                                                }
                                                                                                §§goto(addr1204);
                                                                                             }
                                                                                             §§goto(addr1285);
                                                                                          }
                                                                                          §§goto(addr1167);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr1114);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr961);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr867);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr782:
                                                                              §§push(0);
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§goto(addr785);
                                                                                 §§push(§§pop());
                                                                              }
                                                                           }
                                                                           §§goto(addr1158);
                                                                        }
                                                                     }
                                                                     §§goto(addr1140);
                                                                  }
                                                                  §§goto(addr1029);
                                                               }
                                                               §§goto(addr1140);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr1024);
                                                            }
                                                         }
                                                         §§goto(addr845);
                                                      }
                                                      §§goto(addr1277);
                                                   }
                                                   §§goto(addr1092);
                                                }
                                                §§goto(addr719);
                                                addr715:
                                             }
                                             §§goto(addr1115);
                                          }
                                          §§goto(addr1231);
                                       }
                                       else
                                       {
                                          §§push(param1);
                                          loop10:
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop1;
                                             }
                                             continue loop3;
                                             addr206:
                                             if(_loc5_ && this)
                                             {
                                                continue;
                                             }
                                             if(§§pop() == "height")
                                             {
                                                loop31:
                                                while(true)
                                                {
                                                   if(_loc4_ || this)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         addr825:
                                                         this._flags |= 256;
                                                         break;
                                                      }
                                                      this._flags |= 4096;
                                                      loop32:
                                                      for(; !(_loc5_ && param1); if(!(_loc4_ || this))
                                                      {
                                                         continue;
                                                      },if(_loc5_)
                                                      {
                                                         break loop31;
                                                      },if(_loc5_)
                                                      {
                                                         break loop5;
                                                      },if(_loc5_)
                                                      {
                                                         break loop3;
                                                      },§§goto(addr19))
                                                      {
                                                         if(_loc4_ || param3)
                                                         {
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               if(_loc4_ || param3)
                                                               {
                                                                  if(_loc4_ || param3)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(this.§,_§);
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc5_ && param1))
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr293:
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§goto(addr299);
                                                                                       §§push(this.§,_§);
                                                                                    }
                                                                                    §§goto(addr926);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              if(!(_loc5_ && param3))
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§push(this.§,_§);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§push(§§pop().relativeFlags);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(!(_loc5_ && param1))
                                                                                             {
                                                                                                if(!(_loc5_ && param3))
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      §§push(param3);
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr127:
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              §§push(4096);
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc5_ && param1))
                                                                                                                                    {
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          addr158:
                                                                                                                                          §§push(§§pop() | §§pop());
                                                                                                                                          if(_loc4_ || param2)
                                                                                                                                          {
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                §§pop().relativeFlags = §§pop();
                                                                                                                                                continue loop31;
                                                                                                                                             }
                                                                                                                                             §§goto(addr888);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr365:
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc5_ && param3))
                                                                                                                                                {
                                                                                                                                                   §§pop().relativeFlags = §§pop();
                                                                                                                                                   addr375:
                                                                                                                                                   if(_loc4_ || param3)
                                                                                                                                                   {
                                                                                                                                                      addr271:
                                                                                                                                                      §§push(this.§,_§);
                                                                                                                                                      if(!(_loc5_ && param3))
                                                                                                                                                      {
                                                                                                                                                         if(_loc4_ || param1)
                                                                                                                                                         {
                                                                                                                                                            addr286:
                                                                                                                                                            §§push(param2);
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               §§pop().width = §§pop();
                                                                                                                                                               break loop32;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1187);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr19);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1006);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr916);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1238);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr668);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr539:
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   §§pop().relativeFlags = §§pop();
                                                                                                                                                   addr542:
                                                                                                                                                   if(!_loc5_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§,_§);
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr684);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr785);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr961);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr782);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr530:
                                                                                                                                       if(_loc4_ || param2)
                                                                                                                                       {
                                                                                                                                          addr538:
                                                                                                                                          §§goto(addr539);
                                                                                                                                          §§push(§§pop() | §§pop());
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1102);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr359:
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          addr364:
                                                                                                                                          §§goto(addr365);
                                                                                                                                          §§push(§§pop() | §§pop());
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr667);
                                                                                                                                       }
                                                                                                                                       §§goto(addr668);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr509:
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          if(_loc4_ || param1)
                                                                                                                                          {
                                                                                                                                             if(!(_loc5_ && param2))
                                                                                                                                             {
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr538);
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1049);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1051);
                                                                                                                                             }
                                                                                                                                             §§goto(addr960);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr884);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr765);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1204);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr150:
                                                                                                                                 if(!(_loc5_ && param3))
                                                                                                                                 {
                                                                                                                                    §§goto(addr158);
                                                                                                                                    §§push(§§pop());
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr349:
                                                                                                                                    if(!(_loc5_ && param1))
                                                                                                                                    {
                                                                                                                                       §§goto(addr364);
                                                                                                                                       §§push(§§pop());
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr662);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1244);
                                                                                                                           }
                                                                                                                           §§goto(addr1196);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr497:
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              if(_loc4_ || this)
                                                                                                                              {
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr509);
                                                                                                                                    §§push(1024);
                                                                                                                                 }
                                                                                                                                 §§goto(addr935);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr753:
                                                                                                                                 if(_loc4_ || param2)
                                                                                                                                 {
                                                                                                                                    §§goto(addr761);
                                                                                                                                    §§push(param3);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1198);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr645);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1029);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr334:
                                                                                                                        if(!(_loc5_ && param3))
                                                                                                                        {
                                                                                                                           if(_loc4_ || param3)
                                                                                                                           {
                                                                                                                              §§goto(addr349);
                                                                                                                              §§push(2048);
                                                                                                                           }
                                                                                                                           §§goto(addr1102);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr662);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr662);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                  }
                                                                                                                  §§goto(addr150);
                                                                                                               }
                                                                                                               §§goto(addr856);
                                                                                                            }
                                                                                                            §§goto(addr653);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr489:
                                                                                                            if(!(_loc5_ && param3))
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  §§goto(addr497);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr530);
                                                                                                                  §§push(0);
                                                                                                               }
                                                                                                               §§goto(addr1102);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr946);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr329:
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  §§goto(addr334);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr359);
                                                                                                                  §§push(0);
                                                                                                               }
                                                                                                               §§goto(addr1204);
                                                                                                            }
                                                                                                            §§goto(addr1239);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1100);
                                                                                                }
                                                                                                §§goto(addr855);
                                                                                             }
                                                                                             §§goto(addr765);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr484:
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   §§goto(addr489);
                                                                                                   §§push(param3);
                                                                                                }
                                                                                                §§goto(addr1140);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr864);
                                                                                       }
                                                                                       §§goto(addr127);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr299:
                                                                                       if(_loc4_ || param1)
                                                                                       {
                                                                                          if(!(_loc5_ && param3))
                                                                                          {
                                                                                             §§push(§§pop().relativeFlags);
                                                                                             if(_loc4_ || param3)
                                                                                             {
                                                                                                if(!(_loc5_ && param3))
                                                                                                {
                                                                                                   §§goto(addr329);
                                                                                                   §§push(param3);
                                                                                                }
                                                                                                §§goto(addr1147);
                                                                                             }
                                                                                             §§goto(addr334);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr623);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr474:
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(_loc4_ || param1)
                                                                                             {
                                                                                                §§goto(addr484);
                                                                                                §§push(§§pop().relativeFlags);
                                                                                             }
                                                                                             §§goto(addr1277);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr750:
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                §§goto(addr753);
                                                                                                §§push(§§pop().relativeFlags);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr1096);
                                                                                             }
                                                                                             §§goto(addr1092);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1096);
                                                                                 }
                                                                                 §§goto(addr835);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr461:
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(_loc4_ || param2)
                                                                                       {
                                                                                          §§goto(addr474);
                                                                                          §§push(this.§,_§);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr734:
                                                                                          if(_loc4_ || param3)
                                                                                          {
                                                                                             addr1193:
                                                                                             if(!(_loc5_ && param2))
                                                                                             {
                                                                                                §§goto(addr750);
                                                                                                §§push(this.§,_§);
                                                                                             }
                                                                                             §§goto(addr1096);
                                                                                             §§push(this.§,_§);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr921);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr610);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr595);
                                                                              §§goto(addr926);
                                                                           }
                                                                           §§goto(addr271);
                                                                           addr194:
                                                                           §§push(this.§,_§);
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§push(param2);
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(_loc4_ || param2)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(_loc4_ || param1)
                                                                                       {
                                                                                          addr49:
                                                                                          §§pop().height = §§pop();
                                                                                          if(_loc4_ || param3)
                                                                                          {
                                                                                             continue loop32;
                                                                                          }
                                                                                          continue loop31;
                                                                                       }
                                                                                       §§goto(addr1133);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr838);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr603);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr433:
                                                                                 if(!(_loc5_ && param1))
                                                                                 {
                                                                                    if(!(_loc5_ && param1))
                                                                                    {
                                                                                       §§pop().alpha = §§pop();
                                                                                       addr448:
                                                                                       if(!(_loc5_ && param1))
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§goto(addr1247);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr1081);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr998);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr720);
                                                                                 }
                                                                              }
                                                                              §§goto(addr19);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr286);
                                                                           }
                                                                        }
                                                                        §§goto(addr433);
                                                                        §§push(param2);
                                                                     }
                                                                     §§goto(addr1002);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr695);
                                                                  }
                                                               }
                                                               §§goto(addr542);
                                                            }
                                                            else
                                                            {
                                                               addr400:
                                                               if(_loc4_)
                                                               {
                                                                  if(_loc5_ && param3)
                                                                  {
                                                                     break loop6;
                                                                  }
                                                                  this._flags |= 2048;
                                                                  addr415:
                                                                  if(!_loc4_)
                                                                  {
                                                                     break loop10;
                                                                  }
                                                                  if(_loc4_)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(_loc5_ && param2)
                                                                        {
                                                                           break loop0;
                                                                        }
                                                                        §§goto(addr293);
                                                                        §§push(this.§,_§);
                                                                     }
                                                                     §§goto(addr1168);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr903);
                                                                  }
                                                               }
                                                               addr573:
                                                               if(_loc4_ || param1)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     if(!(_loc5_ && param1))
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           §§goto(addr461);
                                                                           §§push(this.§,_§);
                                                                        }
                                                                        §§goto(addr889);
                                                                     }
                                                                     §§goto(addr720);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr708);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr606);
                                                         }
                                                         §§goto(addr415);
                                                      }
                                                      §§goto(addr19);
                                                   }
                                                   §§goto(addr375);
                                                }
                                                §§goto(addr734);
                                                §§push(this.§,_§);
                                             }
                                             §§goto(addr19);
                                          }
                                          addr560:
                                          if(_loc4_ || this)
                                          {
                                             this._flags |= 1024;
                                             §§goto(addr573);
                                          }
                                       }
                                       §§goto(addr803);
                                    }
                                    §§goto(addr810);
                                    addr691:
                                 },§§goto(addr825))
                                 {
                                    §§push(param1);
                                    loop7:
                                    while(§§pop() != "rotationX")
                                    {
                                       §§push(param1);
                                       while(true)
                                       {
                                          if(!_loc5_)
                                          {
                                             continue loop6;
                                          }
                                          continue loop7;
                                       }
                                       continue loop2;
                                    }
                                    if(!(_loc5_ && param1))
                                    {
                                       this._flags |= 128;
                                       §§push(this.§,_§);
                                       loop15:
                                       while(true)
                                       {
                                          §§push(this.§,_§);
                                          addr845:
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                addr935:
                                                §§push(§§pop().relativeFlags);
                                                if(_loc4_ || param1)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      addr946:
                                                      §§push(param3);
                                                      if(!_loc5_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§goto(addr949);
                                                         }
                                                         else
                                                         {
                                                            addr960:
                                                            §§push(0);
                                                         }
                                                         §§goto(addr961);
                                                      }
                                                      §§goto(addr1277);
                                                   }
                                                   §§goto(addr1279);
                                                }
                                                break loop15;
                                             }
                                             if(_loc4_ || this)
                                             {
                                                §§push(§§pop().relativeFlags);
                                                while(true)
                                                {
                                                   §§push(param3);
                                                   addr856:
                                                   while(true)
                                                   {
                                                      if(!(_loc5_ && this))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(_loc4_)
                                                            {
                                                               §§push(128);
                                                               while(_loc4_ || this)
                                                               {
                                                                  if(_loc4_ || param3)
                                                                  {
                                                                     §§push(§§pop());
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() | §§pop());
                                                                        addr888:
                                                                        while(true)
                                                                        {
                                                                           §§pop().relativeFlags = §§pop();
                                                                           addr889:
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_ && param3)
                                                                              {
                                                                                 break loop22;
                                                                              }
                                                                              §§push(this.§,_§);
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    continue loop15;
                                                                                 }
                                                                                 §§pop().rotationX = param2;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr922:
                                                                     addr887:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr1285:
                                                                     §§pop().relativeFlags = §§pop() | §§pop();
                                                                     addr1269:
                                                                     this.§,_§.x = param2;
                                                                     addr1286:
                                                                     addr1283:
                                                                     addr1284:
                                                                     addr1268:
                                                                     addr1270:
                                                                  }
                                                                  return;
                                                               }
                                                               §§pop().relativeFlags = §§pop() | §§pop();
                                                               if(_loc4_ || param3)
                                                               {
                                                                  addr1188:
                                                                  this.§,_§.z = param2;
                                                                  addr1189:
                                                                  addr1187:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr1286);
                                                               }
                                                               §§goto(addr19);
                                                            }
                                                            addr949:
                                                            if(_loc4_ || param3)
                                                            {
                                                               addr961:
                                                               §§push(§§pop() | 64);
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  §§pop().relativeFlags = §§pop();
                                                                  addr970:
                                                                  if(_loc4_)
                                                                  {
                                                                     addr921:
                                                                     this.§,_§.rotation = param2;
                                                                     §§goto(addr922);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(this.§,_§);
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§,_§);
                                                                              addr1237:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().relativeFlags);
                                                                                 break loop15;
                                                                              }
                                                                           }
                                                                           addr1235:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr1277:
                                                                           §§push(this.§,_§);
                                                                           §§push(this.§,_§.relativeFlags);
                                                                           if(param3)
                                                                           {
                                                                              addr1279:
                                                                              §§push(1);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr1283);
                                                                              §§push(0);
                                                                           }
                                                                           §§goto(addr1284);
                                                                           addr1306:
                                                                        }
                                                                     }
                                                                     addr1262:
                                                                  }
                                                                  §§goto(addr19);
                                                               }
                                                               else
                                                               {
                                                                  addr1051:
                                                                  if(_loc4_)
                                                                  {
                                                                     §§pop().relativeFlags = §§pop();
                                                                     addr998:
                                                                     §§push(this.§,_§);
                                                                     §§push(param2);
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§pop().scaleZ = §§pop();
                                                                        addr1002:
                                                                     }
                                                                     else
                                                                     {
                                                                        addr1076:
                                                                        if(_loc4_)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§pop().scaleY = §§pop();
                                                                              addr1081:
                                                                              if(!(_loc4_ || param1))
                                                                              {
                                                                                 addr1134:
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    break loop2;
                                                                                 }
                                                                              }
                                                                              §§goto(addr19);
                                                                           }
                                                                           §§goto(addr1269);
                                                                        }
                                                                        §§goto(addr1188);
                                                                     }
                                                                     §§goto(addr19);
                                                                     addr1054:
                                                                  }
                                                                  §§goto(addr1204);
                                                               }
                                                            }
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(2);
                                                               addr1241:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  addr1245:
                                                                  addr1229:
                                                                  addr1231:
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() | §§pop());
                                                                     addr1246:
                                                                     while(true)
                                                                     {
                                                                        §§pop().relativeFlags = §§pop();
                                                                        addr1247:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              break loop13;
                                                                           }
                                                                           break loop1;
                                                                        }
                                                                     }
                                                                  }
                                                                  this.§,_§.y = param2;
                                                                  §§goto(addr19);
                                                                  continue loop16;
                                                               }
                                                            }
                                                            addr1240:
                                                            addr864:
                                                         }
                                                         else
                                                         {
                                                            §§push(0);
                                                            while(!_loc5_)
                                                            {
                                                               §§push(§§pop());
                                                            }
                                                            addr1037:
                                                            if(!_loc5_)
                                                            {
                                                               addr1199:
                                                               if(_loc4_ || param1)
                                                               {
                                                                  addr1050:
                                                                  §§goto(addr1051);
                                                                  §§push(§§pop() | §§pop());
                                                               }
                                                               §§goto(addr1203);
                                                               §§push(§§pop());
                                                            }
                                                            else
                                                            {
                                                               addr1105:
                                                               if(_loc4_ || param2)
                                                               {
                                                                  addr1114:
                                                                  §§pop().relativeFlags = §§pop() | §§pop();
                                                                  addr1073:
                                                                  §§push(this.§,_§);
                                                                  if(_loc4_)
                                                                  {
                                                                     §§goto(addr1076);
                                                                     §§push(param2);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr1133:
                                                                     §§pop().scaleX = param2;
                                                                     addr1132:
                                                                  }
                                                                  §§goto(addr1134);
                                                                  addr1113:
                                                                  addr1115:
                                                               }
                                                               else
                                                               {
                                                                  addr1148:
                                                                  if(!(_loc5_ && param1))
                                                                  {
                                                                     addr1167:
                                                                     §§pop().relativeFlags = §§pop() | §§pop();
                                                                     §§goto(addr1132);
                                                                     §§push(this.§,_§);
                                                                     addr1166:
                                                                     addr1168:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr1241);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr19);
                                                            addr884:
                                                         }
                                                         §§goto(addr887);
                                                      }
                                                      else
                                                      {
                                                         addr1028:
                                                         if(§§pop())
                                                         {
                                                            addr1029:
                                                            if(_loc4_ || param3)
                                                            {
                                                               §§goto(addr1037);
                                                               §§push(32);
                                                            }
                                                            §§goto(addr1277);
                                                         }
                                                         else
                                                         {
                                                            addr1049:
                                                            §§push(0);
                                                         }
                                                      }
                                                      §§goto(addr1050);
                                                   }
                                                }
                                                addr855:
                                             }
                                             §§goto(addr1237);
                                             §§goto(addr1279);
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(param3);
                                          addr1239:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                §§goto(addr1240);
                                             }
                                             else
                                             {
                                                addr1244:
                                                §§push(0);
                                                while(true)
                                                {
                                                }
                                                addr1244:
                                             }
                                             §§goto(addr1245);
                                          }
                                       }
                                       addr916:
                                       addr1238:
                                    }
                                    else
                                    {
                                       addr1067:
                                       if(!_loc5_)
                                       {
                                          addr1006:
                                          §§push(this.§,_§);
                                          if(!_loc5_)
                                          {
                                             if(!(_loc5_ && this))
                                             {
                                                if(!(_loc5_ && this))
                                                {
                                                   addr1024:
                                                   §§push(this.§,_§.relativeFlags);
                                                   if(_loc4_)
                                                   {
                                                      §§goto(addr1028);
                                                      §§push(param3);
                                                   }
                                                   §§goto(addr1029);
                                                }
                                                §§goto(addr1268);
                                             }
                                             §§goto(addr1235);
                                          }
                                          §§goto(addr1229);
                                       }
                                    }
                                    §§goto(addr1189);
                                 }
                                 if(_loc4_ || param1)
                                 {
                                    this._flags |= 64;
                                    §§goto(addr992);
                                 }
                                 §§goto(addr1054);
                                 addr389:
                                 if(_loc5_ && param1)
                                 {
                                    continue;
                                 }
                                 if(_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 if(§§pop() != "width")
                                 {
                                    addr197:
                                    §§push(param1);
                                    if(!(_loc4_ || param2))
                                    {
                                       while(true)
                                       {
                                          if(_loc4_)
                                          {
                                             §§goto(addr389);
                                          }
                                          else
                                          {
                                             §§goto(addr691);
                                          }
                                       }
                                       §§goto(addr400);
                                       addr387:
                                    }
                                    §§goto(addr206);
                                 }
                                 §§goto(addr400);
                              }
                              this._flags |= 32;
                              §§goto(addr1067);
                           }
                           this._flags |= 16;
                           §§goto(addr1128);
                        }
                        if(_loc4_)
                        {
                           this._flags |= 8;
                           §§goto(addr1183);
                        }
                        §§goto(addr1204);
                     }
                     this._flags |= 4;
                     §§goto(addr1225);
                  }
                  break;
                  if(!(_loc4_ || this))
                  {
                     continue;
                  }
                  if(§§pop() != "alpha")
                  {
                     §§goto(addr387);
                     §§push(param1);
                  }
                  §§goto(addr560);
               }
               while(true)
               {
                  this._flags |= 2;
                  §§goto(addr1262);
               }
            }
            this._flags |= 1;
            §§goto(addr1306);
         }
         §§goto(addr715);
      }
      
      protected function §9;§(param1:BitmapFilter, param2:Class) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Array = this.§"!c§.filters;
         var _loc4_:uint = _loc3_.length;
         var _loc5_:uint = 0;
         loop0:
         do
         {
            §§push(_loc5_);
            if(!_loc7_)
            {
               if(§§pop() >= _loc4_)
               {
                  loop1:
                  while(!_loc7_)
                  {
                     _loc3_.push(param1);
                     while(true)
                     {
                        if(!_loc7_)
                        {
                           if(_loc7_)
                           {
                              _loc3_[_loc5_] = param1;
                           }
                           else
                           {
                              addr118:
                           }
                           continue;
                           break loop1;
                        }
                        addr76:
                        §§push(_loc5_);
                        if(!_loc7_)
                        {
                           addr82:
                           _loc5_ = §§pop() + 1;
                           break;
                        }
                        §§goto(addr82);
                     }
                     continue loop0;
                  }
                  this.§"!c§.filters = _loc3_;
                  break;
               }
               if(_loc3_[_loc5_] is param2)
               {
                  §§goto(addr118);
               }
               §§goto(addr76);
            }
            §§goto(addr82);
         }
         while(_loc6_ || this);
         
      }
      
      override public function get target() : Object
      {
         return this.§"!c§;
      }
      
      protected function §4d§(param1:Class) : BitmapFilter
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:BitmapFilter = null;
         var _loc3_:Array = this.§"!c§.filters;
         var _loc4_:uint = _loc3_.length;
         var _loc5_:* = uint(0);
         while(_loc5_ < _loc4_)
         {
            if((_loc2_ = _loc3_[_loc5_] as BitmapFilter) is param1)
            {
               if(_loc8_ || param1)
               {
                  return _loc2_;
               }
            }
            else
            {
               §§push(_loc5_);
               if(!_loc7_)
               {
                  §§push(uint(§§pop() + 1));
               }
               _loc5_ = §§pop();
            }
         }
         _loc2_ = new param1();
         if(_loc8_)
         {
            _loc3_.push(_loc2_);
         }
         do
         {
            this.§"!c§.filters = _loc3_;
         }
         while(!_loc8_);
         
         return _loc2_;
      }
      
      override protected function newInstance() : §4"+§
      {
         return new §@Y§();
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            §§push(param1);
            loop0:
            while(§§pop() != "x")
            {
               §§push(param1);
               while(§§pop() != "y")
               {
                  §§push(param1);
                  loop2:
                  while(_loc4_ || param3)
                  {
                     if(§§pop() != "z")
                     {
                        §§push(param1);
                        loop3:
                        while(§§pop() != "scaleX")
                        {
                           §§push(param1);
                           loop4:
                           for(; §§pop() != "scaleY"; if(!(_loc4_ || param3))
                           {
                              continue;
                           },if(§§pop() != "alpha")
                           {
                              §§goto(addr419);
                              §§push(param1);
                           },§§goto(addr578))
                           {
                              §§push(param1);
                              loop5:
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    if(§§pop() != "scaleZ")
                                    {
                                       §§push(param1);
                                       loop6:
                                       for(; §§pop() != "rotation"; while(true)
                                       {
                                          if(_loc4_ || param2)
                                          {
                                             continue loop5;
                                          }
                                          continue loop6;
                                       },continue loop5)
                                       {
                                          §§push(param1);
                                          loop7:
                                          while(!_loc5_)
                                          {
                                             if(§§pop() == "rotationX")
                                             {
                                                addr892:
                                                if(!(_loc5_ && param3))
                                                {
                                                   if(!(_loc5_ && param2))
                                                   {
                                                      this._flags |= 128;
                                                      addr912:
                                                      if(_loc4_)
                                                      {
                                                         addr826:
                                                         §§push(this.§-!m§);
                                                         if(_loc4_ || this)
                                                         {
                                                            addr835:
                                                            §§push(this.§-!m§);
                                                            if(!_loc5_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  addr840:
                                                                  §§push(§§pop().relativeFlags);
                                                                  if(_loc4_)
                                                                  {
                                                                     addr843:
                                                                     §§push(param3);
                                                                     if(_loc4_ || param1)
                                                                     {
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              addr859:
                                                                              §§push(128);
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr867:
                                                                                 §§push(§§pop() | §§pop());
                                                                                 if(_loc4_ || param2)
                                                                                 {
                                                                                    if(_loc4_ || param2)
                                                                                    {
                                                                                       §§pop().relativeFlags = §§pop();
                                                                                       addr806:
                                                                                       §§push(this.§-!m§);
                                                                                       if(_loc4_ || param3)
                                                                                       {
                                                                                          addr814:
                                                                                          §§pop().rotationX = param2;
                                                                                          addr815:
                                                                                          if(_loc5_ && param1)
                                                                                          {
                                                                                             addr1196:
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr1082:
                                                                                          §§push(param2);
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§pop().scaleY = §§pop();
                                                                                             addr1086:
                                                                                             if(_loc4_ || param3)
                                                                                             {
                                                                                                §§goto(addr24);
                                                                                             }
                                                                                             addr1190:
                                                                                             addr1147:
                                                                                             §§push(this.§-!m§);
                                                                                             if(_loc4_ || param1)
                                                                                             {
                                                                                                addr1156:
                                                                                                §§push(this.§-!m§);
                                                                                                if(!(_loc5_ && param1))
                                                                                                {
                                                                                                   addr1164:
                                                                                                   §§push(§§pop().relativeFlags);
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      addr1167:
                                                                                                      if(param3)
                                                                                                      {
                                                                                                         addr1168:
                                                                                                         §§push(8);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr1211:
                                                                                                            §§pop().relativeFlags = §§pop() | §§pop();
                                                                                                            addr1209:
                                                                                                            if(!(_loc4_ || this))
                                                                                                            {
                                                                                                               break loop0;
                                                                                                            }
                                                                                                            addr1195:
                                                                                                            this.§-!m§.z = param2;
                                                                                                            addr1194:
                                                                                                            §§goto(addr1196);
                                                                                                            addr1209:
                                                                                                            addr1210:
                                                                                                         }
                                                                                                         §§goto(addr24);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr1174:
                                                                                                         §§push(0);
                                                                                                      }
                                                                                                      addr1176:
                                                                                                      §§pop().relativeFlags = §§pop() | §§pop();
                                                                                                      §§push(this.§-!m§);
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         addr1142:
                                                                                                         §§pop().scaleX = param2;
                                                                                                         addr24:
                                                                                                         return;
                                                                                                         addr1143:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr1299:
                                                                                                         §§push(this.§-!m§.relativeFlags);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            addr1310:
                                                                                                            §§pop().relativeFlags = §§pop() | (!!param3 ? 1 : 0);
                                                                                                            addr1292:
                                                                                                            this.§-!m§.x = param2;
                                                                                                            §§goto(addr24);
                                                                                                            addr1293:
                                                                                                            addr1311:
                                                                                                            addr1303:
                                                                                                            addr1291:
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr24);
                                                                                                      addr1177:
                                                                                                   }
                                                                                                   §§goto(addr1304);
                                                                                                }
                                                                                                §§goto(addr1299);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr1204:
                                                                                                §§push(this.§-!m§.relativeFlags);
                                                                                                if(param3)
                                                                                                {
                                                                                                   addr1206:
                                                                                                   §§push(4);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr1209);
                                                                                                   §§push(0);
                                                                                                }
                                                                                                §§goto(addr1210);
                                                                                             }
                                                                                             §§goto(addr24);
                                                                                          }
                                                                                          §§goto(addr1292);
                                                                                       }
                                                                                       §§goto(addr24);
                                                                                       addr883:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       loop19:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().relativeFlags = §§pop();
                                                                                          addr1274:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§-!m§);
                                                                                             addr1247:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc4_ || param3))
                                                                                                {
                                                                                                   addr1262:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§-!m§);
                                                                                                      addr1264:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().relativeFlags);
                                                                                                         addr1265:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param3);
                                                                                                            addr1266:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  loop17:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(2);
                                                                                                                     addr1268:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        continue loop17;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr1267:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                  }
                                                                                                                  addr1271:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop19;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr1262:
                                                                                                }
                                                                                                addr1255:
                                                                                                addr1256:
                                                                                                §§pop().y = param2;
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§goto(addr1293);
                                                                                                }
                                                                                                §§goto(addr24);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1292);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr985:
                                                                                    while(!(_loc5_ && this))
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr994:
                                                                                          §§pop().relativeFlags = §§pop();
                                                                                          while(!_loc4_)
                                                                                          {
                                                                                             break loop6;
                                                                                             §§goto(addr994);
                                                                                          }
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             addr918:
                                                                                             §§push(this.§-!m§);
                                                                                             if(_loc4_ || param1)
                                                                                             {
                                                                                                addr926:
                                                                                                §§push(param2);
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   §§pop().rotation = §§pop();
                                                                                                   addr929:
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         §§goto(addr1082);
                                                                                                         §§push(this.§-!m§);
                                                                                                         addr1120:
                                                                                                      }
                                                                                                      §§goto(addr24);
                                                                                                   }
                                                                                                   §§goto(addr1086);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr1255);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1147);
                                                                                          }
                                                                                          §§goto(addr1209);
                                                                                          addr995:
                                                                                       }
                                                                                       §§goto(addr1310);
                                                                                    }
                                                                                    addr985:
                                                                                 }
                                                                                 §§goto(addr1176);
                                                                              }
                                                                              §§goto(addr1271);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr1047:
                                                                              §§push(0);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§goto(addr867);
                                                                                 §§push(§§pop());
                                                                              }
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       addr1055:
                                                                                       §§pop().relativeFlags = §§pop() | §§pop();
                                                                                       addr1024:
                                                                                       this.§-!m§.scaleZ = param2;
                                                                                       addr1054:
                                                                                       addr1025:
                                                                                       addr1056:
                                                                                       addr1023:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr1304);
                                                                                    }
                                                                                    §§goto(addr24);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr1174);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr1110:
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    addr1119:
                                                                                    §§pop().relativeFlags = §§pop() | §§pop();
                                                                                    addr1118:
                                                                                    §§goto(addr1120);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr1268);
                                                                                 }
                                                                              }
                                                                              §§goto(addr1310);
                                                                           }
                                                                        }
                                                                        §§goto(addr1204);
                                                                     }
                                                                     §§goto(addr1167);
                                                                  }
                                                                  §§goto(addr1204);
                                                               }
                                                               §§goto(addr1156);
                                                            }
                                                            while(true)
                                                            {
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  if(!(_loc5_ && param3))
                                                                  {
                                                                     if(!(_loc5_ && param1))
                                                                     {
                                                                        §§push(§§pop().relativeFlags);
                                                                        while(!_loc5_)
                                                                        {
                                                                           §§push(param3);
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 while(_loc4_ || param2)
                                                                                 {
                                                                                    if(_loc4_ || param1)
                                                                                    {
                                                                                       §§push(64);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          addr984:
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr985);
                                                                                          }
                                                                                       }
                                                                                       addr980:
                                                                                    }
                                                                                    §§goto(addr1267);
                                                                                 }
                                                                                 break;
                                                                                 addr965:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr983:
                                                                              }
                                                                              §§push(0);
                                                                              while(true)
                                                                              {
                                                                              }
                                                                              §§goto(addr984);
                                                                           }
                                                                           §§goto(addr1168);
                                                                        }
                                                                        addr1036:
                                                                        §§push(32);
                                                                        if(_loc4_ || param1)
                                                                        {
                                                                           §§goto(addr1054);
                                                                           §§push(§§pop());
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr1168);
                                                                        }
                                                                        §§goto(addr24);
                                                                        addr961:
                                                                     }
                                                                     §§goto(addr1264);
                                                                  }
                                                                  break;
                                                               }
                                                               addr1031:
                                                               §§push(§§pop().relativeFlags);
                                                               §§push(param3);
                                                               if(_loc4_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     §§goto(addr1036);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr1047);
                                                                     §§push(0);
                                                                  }
                                                                  §§goto(addr1310);
                                                               }
                                                               else
                                                               {
                                                                  addr1108:
                                                                  if(§§pop())
                                                                  {
                                                                     addr1109:
                                                                     §§goto(addr1110);
                                                                     §§push(16);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr1115:
                                                                     §§push(0);
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§goto(addr1118);
                                                                        §§push(§§pop());
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr1308);
                                                            }
                                                            addr1106:
                                                            §§goto(addr1108);
                                                            §§push(§§pop().relativeFlags);
                                                            §§push(param3);
                                                            addr939:
                                                         }
                                                         §§goto(addr1031);
                                                         §§push(this.§-!m§);
                                                      }
                                                      §§goto(addr1025);
                                                   }
                                                   else
                                                   {
                                                      addr1233:
                                                      if(!_loc5_)
                                                      {
                                                         this._flags |= 4;
                                                         addr1241:
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr1204);
                                                            §§push(this.§-!m§);
                                                         }
                                                         §§goto(addr1299);
                                                         §§push(this.§-!m§);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr1262);
                                                         §§push(this.§-!m§);
                                                         addr1287:
                                                      }
                                                      §§goto(addr1310);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(_loc5_ && param1)
                                                   {
                                                      break loop5;
                                                   }
                                                   §§push(this.§-!m§);
                                                   while(true)
                                                   {
                                                      §§goto(addr939);
                                                   }
                                                }
                                                addr1012:
                                             }
                                             else
                                             {
                                                §§push(param1);
                                                loop8:
                                                while(true)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(§§pop() == "rotationY")
                                                      {
                                                         break;
                                                      }
                                                      §§push(param1);
                                                      continue loop6;
                                                   }
                                                   continue loop7;
                                                   addr562:
                                                   addr578:
                                                   loop10:
                                                   while(true)
                                                   {
                                                      if(!(_loc5_ && param3))
                                                      {
                                                         continue loop4;
                                                      }
                                                      continue loop8;
                                                      addr419:
                                                      while(true)
                                                      {
                                                         if(_loc4_ || param3)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               continue;
                                                            }
                                                            continue loop6;
                                                         }
                                                         continue loop10;
                                                      }
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               this._flags |= 2048;
                                                               §§goto(addr447);
                                                            }
                                                            §§goto(addr594);
                                                         }
                                                         §§goto(addr534);
                                                      }
                                                      §§goto(addr464);
                                                   }
                                                   addr1071:
                                                   if(_loc4_)
                                                   {
                                                      this._flags |= 1024;
                                                      §§goto(addr586);
                                                   }
                                                   if(_loc4_ || param2)
                                                   {
                                                      §§goto(addr826);
                                                      §§push(this.§-!m§);
                                                   }
                                                   else
                                                   {
                                                      addr1133:
                                                      if(_loc4_)
                                                      {
                                                         §§goto(addr1097);
                                                         §§push(this.§-!m§);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr1241);
                                                      }
                                                   }
                                                   §§goto(addr1299);
                                                }
                                                if(!(_loc5_ && param3))
                                                {
                                                   this._flags |= 256;
                                                   §§goto(addr788);
                                                }
                                             }
                                             §§goto(addr995);
                                          }
                                          continue loop2;
                                       }
                                       while(true)
                                       {
                                          this._flags |= 64;
                                          §§goto(addr1012);
                                       }
                                    }
                                    break;
                                 }
                                 continue loop3;
                                 if(_loc5_ && this)
                                 {
                                    continue;
                                 }
                                 if(§§pop() != "rotationZ")
                                 {
                                    §§goto(addr562);
                                    §§push(param1);
                                 }
                                 §§goto(addr687);
                              }
                              this._flags |= 32;
                              §§goto(addr1071);
                           }
                           this._flags |= 16;
                           §§goto(addr1133);
                        }
                        this._flags |= 8;
                        §§goto(addr1190);
                     }
                     §§goto(addr1233);
                  }
               }
               this._flags |= 2;
               §§goto(addr1287);
            }
            this._flags |= 1;
            §§goto(addr1241);
         }
         §§goto(addr802);
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:DisplayObject = this.§"!c§;
         var _loc3_:DisplayObjectParameter = this.§,_§;
         var _loc4_:DisplayObjectParameter = this.§-!m§;
         §§push(this._flags);
         if(_loc8_ || _loc3_)
         {
            §§push(uint(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(1 - param1);
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         if(!(_loc7_ && this))
         {
            §§push(_loc5_);
            loop0:
            while(true)
            {
               §§push(1);
               loop1:
               while(true)
               {
                  §§push(§§pop() & §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     loop3:
                     while(true)
                     {
                        if(§§pop() != §§pop())
                        {
                           while(true)
                           {
                              _loc2_.x = _loc4_.x * _loc6_ + _loc3_.x * param1;
                              addr752:
                              while(true)
                              {
                              }
                           }
                           addr731:
                        }
                        while(true)
                        {
                           §§push(_loc5_);
                           loop7:
                           while(true)
                           {
                              §§push(2);
                              loop8:
                              while(true)
                              {
                                 §§push(§§pop() & §§pop());
                                 loop9:
                                 while(true)
                                 {
                                    §§push(0);
                                    loop10:
                                    while(true)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          while(true)
                                          {
                                             _loc2_.y = _loc4_.y * _loc6_ + _loc3_.y * param1;
                                             addr725:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr714:
                                       }
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          loop14:
                                          while(true)
                                          {
                                             §§push(4);
                                             loop15:
                                             while(true)
                                             {
                                                §§push(§§pop() & §§pop());
                                                loop16:
                                                while(!(_loc7_ && _loc3_))
                                                {
                                                   §§push(0);
                                                   loop17:
                                                   while(true)
                                                   {
                                                      if(§§pop() != §§pop())
                                                      {
                                                         loop18:
                                                         while(!_loc7_)
                                                         {
                                                            _loc2_.z = _loc4_.z * _loc6_ + _loc3_.z * param1;
                                                            while(true)
                                                            {
                                                               loop30:
                                                               while(!(_loc7_ && param1))
                                                               {
                                                                  if(!(_loc7_ && _loc2_))
                                                                  {
                                                                     §§push(_loc5_);
                                                                     continue loop0;
                                                                  }
                                                                  §§goto(addr731);
                                                                  loop81:
                                                                  while(true)
                                                                  {
                                                                     if(_loc7_ && this)
                                                                     {
                                                                        continue loop30;
                                                                     }
                                                                     if(_loc8_)
                                                                     {
                                                                        loop51:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           loop52:
                                                                           while(_loc8_)
                                                                           {
                                                                              if(!(_loc7_ && param1))
                                                                              {
                                                                                 §§push(2048);
                                                                                 loop53:
                                                                                 for(; !(_loc7_ && _loc3_); §§push(4096),if(_loc7_ && param1)
                                                                                 {
                                                                                    continue;
                                                                                 },if(_loc8_ || _loc2_)
                                                                                 {
                                                                                    addr578:
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§goto(addr89);
                                                                                    }
                                                                                    while(_loc8_ || _loc2_)
                                                                                    {
                                                                                       §§goto(addr586);
                                                                                       §§push(§§pop() & §§pop());
                                                                                    }
                                                                                    §§goto(addr664);
                                                                                    addr578:
                                                                                 },§§goto(addr427))
                                                                                 {
                                                                                    addr197:
                                                                                    if(_loc8_ || _loc2_)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          §§push(§§pop() & §§pop());
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   break;
                                                                                                   addr212:
                                                                                                }
                                                                                                §§push(0);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                   addr340:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop() == §§pop())
                                                                                                      {
                                                                                                         continue loop51;
                                                                                                      }
                                                                                                      while(!_loc7_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc2_.alpha = _loc4_.alpha * _loc6_ + _loc3_.alpha * param1;
                                                                                                            continue loop81;
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc2_.scaleZ = _loc4_.scaleZ * _loc6_ + _loc3_.scaleZ * param1;
                                                                                                         addr633:
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop17;
                                                                                             }
                                                                                             addr325:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc8_ || _loc3_)
                                                                                                {
                                                                                                   if(!(_loc8_ || this))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr340);
                                                                                                   §§push(0);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr430:
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      addr433:
                                                                                                      §§push(0);
                                                                                                      if(_loc8_ || this)
                                                                                                      {
                                                                                                         if(!(_loc7_ && _loc3_))
                                                                                                         {
                                                                                                            if(§§pop() != §§pop())
                                                                                                            {
                                                                                                               if(!(_loc7_ && this))
                                                                                                               {
                                                                                                                  if(!(_loc7_ && param1))
                                                                                                                  {
                                                                                                                     _loc2_.rotationY = _loc4_.rotationY * _loc6_ + _loc3_.rotationY * param1;
                                                                                                                     loop42:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr374:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr376:
                                                                                                                           §§push(_loc5_);
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              continue loop14;
                                                                                                                           }
                                                                                                                           §§push(512);
                                                                                                                           if(_loc7_ && this)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           addr387:
                                                                                                                           §§push(§§pop() & §§pop());
                                                                                                                           if(!(_loc7_ && param1))
                                                                                                                           {
                                                                                                                              addr394:
                                                                                                                              §§push(0);
                                                                                                                              loop41:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    if(§§pop() != §§pop())
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc8_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             _loc2_.rotationZ = _loc4_.rotationZ * _loc6_ + _loc3_.rotationZ * param1;
                                                                                                                                             addr416:
                                                                                                                                             if(_loc8_ || param1)
                                                                                                                                             {
                                                                                                                                                break loop41;
                                                                                                                                             }
                                                                                                                                             continue loop42;
                                                                                                                                          }
                                                                                                                                          addr498:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc2_.rotationX = _loc4_.rotationX * _loc6_ + _loc3_.rotationX * param1;
                                                                                                                                             addr509:
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                if(_loc8_ || this)
                                                                                                                                                {
                                                                                                                                                   if(_loc7_ && _loc2_)
                                                                                                                                                   {
                                                                                                                                                      continue loop18;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                      addr426:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         addr427:
                                                                                                                                                         §§push(256);
                                                                                                                                                         if(!_loc7_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr430);
                                                                                                                                                            §§push(§§pop() & §§pop());
                                                                                                                                                         }
                                                                                                                                                         addr637:
                                                                                                                                                         while(!_loc7_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() & §§pop());
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(0);
                                                                                                                                                               addr641:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() != §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc2_.scaleY = _loc4_.scaleY * _loc6_ + _loc3_.scaleY * param1;
                                                                                                                                                                        addr653:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr642:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                     continue loop14;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop1;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr653);
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§goto(addr633);
                                                                                                                                       }
                                                                                                                                       addr398:
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 addr547:
                                                                                                                                 addr666:
                                                                                                                                 while(_loc8_ || param1)
                                                                                                                                 {
                                                                                                                                    if(§§pop() == §§pop())
                                                                                                                                    {
                                                                                                                                       break loop41;
                                                                                                                                    }
                                                                                                                                    continue loop30;
                                                                                                                                 }
                                                                                                                                 while(_loc8_)
                                                                                                                                 {
                                                                                                                                    if(§§pop() != §§pop())
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc2_.scaleX = _loc4_.scaleX * _loc6_ + _loc3_.scaleX * param1;
                                                                                                                                          addr680:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr669:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc5_);
                                                                                                                                       addr636:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr637);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop10;
                                                                                                                                 §§goto(addr394);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_);
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    if(_loc8_ || param1)
                                                                                                                                    {
                                                                                                                                       addr256:
                                                                                                                                       if(_loc7_ && _loc2_)
                                                                                                                                       {
                                                                                                                                          continue loop0;
                                                                                                                                       }
                                                                                                                                       §§push(7168);
                                                                                                                                       while(_loc8_ || param1)
                                                                                                                                       {
                                                                                                                                          if(_loc7_)
                                                                                                                                          {
                                                                                                                                             continue loop8;
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() & §§pop());
                                                                                                                                          while(!(_loc7_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             while(_loc8_ || param1)
                                                                                                                                             {
                                                                                                                                                if(§§pop() == §§pop())
                                                                                                                                                {
                                                                                                                                                   §§goto(addr55);
                                                                                                                                                }
                                                                                                                                                while(_loc8_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc7_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      if(_loc8_ || param1)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                         break loop52;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                         addr663:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(8);
                                                                                                                                                            addr664:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() & §§pop());
                                                                                                                                                               addr665:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr666);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr662:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr669);
                                                                                                                                                }
                                                                                                                                                §§goto(addr398);
                                                                                                                                                if(_loc7_ && _loc2_)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                if(_loc8_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc7_)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() != §§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!_loc7_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  addr139:
                                                                                                                                                                  if(!(_loc7_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc8_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc7_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc7_)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc2_.height = _loc4_.height * _loc6_ + _loc3_.height * param1;
                                                                                                                                                                                    §§goto(addr177);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 addr590:
                                                                                                                                                                                 _loc2_.rotation = _loc4_.rotation * _loc6_ + _loc3_.rotation * param1;
                                                                                                                                                                                 addr601:
                                                                                                                                                                                 if(_loc8_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr476:
                                                                                                                                                                                    §§push(_loc5_);
                                                                                                                                                                                    if(!(_loc7_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr484:
                                                                                                                                                                                       §§push(§§pop() & 128);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc8_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr526:
                                                                                                                                                                                             if(!_loc7_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr490:
                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                if(_loc7_ && this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop3;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(§§pop() != §§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr498);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr424);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                   addr661:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop() != §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr662);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr660:
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc5_);
                                                                                                                                                                                                continue loop7;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr526:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr665);
                                                                                                                                                                                          §§goto(addr387);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr637);
                                                                                                                                                                                       addr485:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr663);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr714);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr725);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr416);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr290);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr498);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr341);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc2_.width = _loc4_.width * _loc6_ + _loc3_.width * param1;
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop81;
                                                                                                                                                                           }
                                                                                                                                                                           if(!(_loc7_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                 if(_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc8_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop53;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop7;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop52;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr476);
                                                                                                                                                                              addr59:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr601);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop81;
                                                                                                                                                                        §§goto(addr139);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr509);
                                                                                                                                                                     addr222:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr601);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr235);
                                                                                                                                                            }
                                                                                                                                                            addr177:
                                                                                                                                                            §§goto(addr55);
                                                                                                                                                         }
                                                                                                                                                         addr55:
                                                                                                                                                         return;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr661);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr490);
                                                                                                                                                }
                                                                                                                                                §§goto(addr433);
                                                                                                                                             }
                                                                                                                                             §§goto(addr395);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             addr587:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc7_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() != §§pop())
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr590);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr476);
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                                §§goto(addr433);
                                                                                                                                             }
                                                                                                                                             §§goto(addr641);
                                                                                                                                          }
                                                                                                                                          §§goto(addr197);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() & §§pop());
                                                                                                                                          addr620:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             addr621:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop() != §§pop())
                                                                                                                                                {
                                                                                                                                                   §§goto(addr622);
                                                                                                                                                }
                                                                                                                                                §§goto(addr526);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr426);
                                                                                                                                 }
                                                                                                                                 break loop52;
                                                                                                                              }
                                                                                                                              addr395:
                                                                                                                           }
                                                                                                                           §§goto(addr485);
                                                                                                                        }
                                                                                                                        continue loop15;
                                                                                                                     }
                                                                                                                     addr473:
                                                                                                                  }
                                                                                                                  §§goto(addr642);
                                                                                                               }
                                                                                                               §§goto(addr473);
                                                                                                            }
                                                                                                            §§goto(addr374);
                                                                                                         }
                                                                                                         §§goto(addr621);
                                                                                                      }
                                                                                                      §§goto(addr587);
                                                                                                   }
                                                                                                   §§goto(addr620);
                                                                                                }
                                                                                             }
                                                                                             continue loop16;
                                                                                             §§goto(addr526);
                                                                                             addr89:
                                                                                             §§push(§§pop() & §§pop());
                                                                                             if(!(_loc8_ || this))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                if(_loc8_ || this)
                                                                                                {
                                                                                                   addr106:
                                                                                                   if(!(_loc7_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         §§goto(addr116);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr212);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            §§goto(addr547);
                                                                                                            §§push(0);
                                                                                                         }
                                                                                                         break;
                                                                                                         §§goto(addr106);
                                                                                                      }
                                                                                                      §§goto(addr640);
                                                                                                      addr544:
                                                                                                   }
                                                                                                   §§goto(addr547);
                                                                                                }
                                                                                                §§goto(addr387);
                                                                                             }
                                                                                             §§goto(addr274);
                                                                                          }
                                                                                          continue loop9;
                                                                                       }
                                                                                       §§goto(addr379);
                                                                                    }
                                                                                    §§goto(addr264);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       §§goto(addr325);
                                                                                       §§push(§§pop() & §§pop());
                                                                                    }
                                                                                    break;
                                                                                    §§goto(addr190);
                                                                                 }
                                                                                 addr190:
                                                                                 §§goto(addr484);
                                                                                 addr322:
                                                                              }
                                                                              §§goto(addr376);
                                                                           }
                                                                           while(_loc8_)
                                                                           {
                                                                              addr314:
                                                                              if(_loc8_ || this)
                                                                              {
                                                                                 §§goto(addr322);
                                                                                 §§push(1024);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(56);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§goto(addr660);
                                                                                       §§push(§§pop() & §§pop());
                                                                                    }
                                                                                    §§goto(addr314);
                                                                                 }
                                                                                 addr656:
                                                                              }
                                                                              §§goto(addr664);
                                                                           }
                                                                           §§goto(addr636);
                                                                        }
                                                                     }
                                                                     §§goto(addr680);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr752);
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr656);
                                                      }
                                                   }
                                                }
                                                continue loop2;
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
               }
            }
         }
         §§goto(addr343);
      }
      
      override public function set target(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§"!c§ = param1 as DisplayObject;
         }
      }
      
      override protected function resolveValues() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override public function getObject(param1:String) : Object
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(param1);
            loop0:
            while(§§pop() != "_blurFilter")
            {
               loop1:
               while(true)
               {
                  §§push(param1);
                  loop2:
                  while(§§pop() != "_glowFilter")
                  {
                     loop3:
                     while(true)
                     {
                        §§push(param1);
                        loop4:
                        while(§§pop() != "_dropShadowFilter")
                        {
                           loop5:
                           while(true)
                           {
                              §§push(param1);
                              loop6:
                              while(!_loc3_)
                              {
                                 if(§§pop() != "_colorMatrixFilter")
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§push(param1);
                                       loop8:
                                       while(true)
                                       {
                                          if(§§pop() != "_bevelFilter")
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                §§push(param1);
                                                loop10:
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(!(_loc2_ || this))
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop() != "_gradientGlowFilter")
                                                   {
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         loop12:
                                                         while(true)
                                                         {
                                                            if(§§pop() != "_gradientBevelFilter")
                                                            {
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     if(_loc2_ || this)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(§§pop() != "_convolutionFilter")
                                                                           {
                                                                              loop15:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1);
                                                                                 loop16:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc2_ || param1)
                                                                                    {
                                                                                       if(_loc2_ || param1)
                                                                                       {
                                                                                          if(§§pop() != "_displacementMapFilter")
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param1);
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      if(§§pop() != "_shaderFilter")
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(!(_loc3_ && _loc2_))
                                                                                                      {
                                                                                                         if(!(_loc2_ || _loc2_))
                                                                                                         {
                                                                                                            break loop16;
                                                                                                         }
                                                                                                         if(_loc2_ || _loc3_)
                                                                                                         {
                                                                                                            break loop15;
                                                                                                         }
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            return this.§4d§(GradientBevelFilter);
                                                                                                         }
                                                                                                         addr158:
                                                                                                         if(!(_loc3_ && param1))
                                                                                                         {
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         addr206:
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            return this.§4d§(BevelFilter);
                                                                                                         }
                                                                                                         if(_loc2_ || _loc2_)
                                                                                                         {
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                         continue loop5;
                                                                                                      }
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         if(!(_loc3_ && _loc3_))
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               if(!(_loc3_ && _loc3_))
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               continue loop1;
                                                                                                            }
                                                                                                            if(!(_loc2_ || param1))
                                                                                                            {
                                                                                                               break loop4;
                                                                                                            }
                                                                                                            continue loop11;
                                                                                                         }
                                                                                                         continue loop13;
                                                                                                      }
                                                                                                      continue;
                                                                                                   }
                                                                                                   continue loop8;
                                                                                                }
                                                                                                continue loop16;
                                                                                             }
                                                                                             return null;
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       continue loop10;
                                                                                    }
                                                                                    continue loop14;
                                                                                 }
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    §§goto(addr103);
                                                                                 }
                                                                                 addr176:
                                                                                 if(_loc3_ && _loc3_)
                                                                                 {
                                                                                    return this.§4d§(ColorMatrixFilter);
                                                                                 }
                                                                                 addr219:
                                                                                 if(!(_loc3_ && this))
                                                                                 {
                                                                                    return this.§4d§(GradientGlowFilter);
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                              if(_loc2_)
                                                                              {
                                                                                 return this.§4d§(ShaderFilter);
                                                                              }
                                                                              break;
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        return this.§4d§(ConvolutionFilter);
                                                                     }
                                                                     break loop2;
                                                                  }
                                                                  continue loop9;
                                                               }
                                                            }
                                                            §§goto(addr158);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr176);
                                                }
                                                continue loop2;
                                             }
                                          }
                                          §§goto(addr206);
                                       }
                                    }
                                 }
                                 §§goto(addr219);
                              }
                              continue loop0;
                           }
                        }
                        return this.§4d§(DropShadowFilter);
                     }
                  }
                  if(!_loc3_)
                  {
                     return this.§4d§(GlowFilter);
                  }
                  break loop0;
               }
            }
            return this.§4d§(BlurFilter);
         }
         addr103:
         return this.§4d§(DisplacementMapFilter);
      }
      
      override protected function copyFrom(param1:§4"+§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super.copyFrom(param1);
         }
         var _loc2_:§@Y§ = param1 as §@Y§;
         if(_loc4_ || this)
         {
            this.§"!c§ = _loc2_.§"!c§;
            while(true)
            {
               this.§-!m§.copyFrom(_loc2_.§-!m§);
            }
            addr104:
         }
         while(true)
         {
            this.§,_§.copyFrom(_loc2_.§,_§);
            for(; !(_loc3_ && this); this._flags = _loc2_._flags,if(_loc4_ || param1)
            {
               return;
            })
            {
               if(_loc4_)
               {
                  continue;
               }
               §§goto(addr104);
            }
         }
      }
   }
}

class DisplayObjectParameter
{
    
   
   public var width:Number;
   
   public var scaleX:Number;
   
   public var scaleY:Number;
   
   public var scaleZ:Number;
   
   public var rotationX:Number;
   
   public var rotationY:Number;
   
   public var rotationZ:Number;
   
   public var alpha:Number;
   
   public var relativeFlags:uint = 0;
   
   public var height:Number;
   
   public var x:Number;
   
   public var y:Number;
   
   public var z:Number;
   
   public var rotation:Number;
   
   function DisplayObjectParameter()
   {
      super();
   }
   
   public function copyFrom(param1:DisplayObjectParameter) : void
   {
      this.relativeFlags = param1.relativeFlags;
      this.x = param1.x;
      this.y = param1.y;
      this.z = param1.z;
      this.scaleX = param1.scaleX;
      this.scaleY = param1.scaleY;
      this.scaleZ = param1.scaleZ;
      this.rotation = param1.rotation;
      this.rotationX = param1.rotationX;
      this.rotationY = param1.rotationY;
      this.rotationZ = param1.rotationZ;
      this.alpha = param1.alpha;
      this.width = param1.width;
      this.height = param1.height;
   }
}
