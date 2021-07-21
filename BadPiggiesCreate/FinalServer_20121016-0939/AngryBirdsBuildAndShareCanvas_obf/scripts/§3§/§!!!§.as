package §3§
{
   import §&"5§.§7!P§;
   import com.rovio.assets.§>!]§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class §!!!§ extends Sprite
   {
      
      private static const §!"+§:int = 30;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §!"+§ = 30;
         }
      }
      
      private const §3!h§:Number = 0.8;
      
      private const §?"#§:Number = 0.3;
      
      private var §%g§:Boolean;
      
      private var §'"1§:Bitmap;
      
      private var § !T§:DisplayObject;
      
      private var §]"7§:DisplayObject;
      
      private var §,!E§:String;
      
      public function §!!!§(param1:String, param2:Boolean)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            super();
            if(_loc6_ || this)
            {
               addr32:
               this.§%g§ = param2;
            }
            var _loc3_:BitmapData = §7!P§.§2=§.§"k§(param1);
            if(!(_loc7_ && param1))
            {
               this.§'"1§ = new Bitmap(_loc3_,"auto",true);
               while(true)
               {
                  this.§'"1§.smoothing = true;
                  addr63:
                  if(!(_loc6_ || this))
                  {
                     continue;
                  }
                  if(false)
                  {
                     loop2:
                     while(true)
                     {
                        this.§'"1§.width = Math.min(this.§'"1§.width,§!"+§);
                        while(_loc6_)
                        {
                           this.§'"1§.scaleY = this.§'"1§.scaleX;
                           if(!(_loc6_ || this))
                           {
                              continue;
                           }
                           §§goto(addr63);
                        }
                        addr90:
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                  }
                  var _loc4_:Class = §>!]§.§1!8§("checkMark");
                  if(_loc6_)
                  {
                     this.§ !T§ = new _loc4_();
                  }
                  var _loc5_:Class = §>!]§.§1!8§("crossMark");
                  if(!_loc7_)
                  {
                     this.§]"7§ = new _loc5_();
                     loop4:
                     while(true)
                     {
                        this.§,!E§ = param1;
                        loop5:
                        while(true)
                        {
                           addChild(this.§'"1§);
                           loop6:
                           while(true)
                           {
                              this.§ !T§.x = this.§'"1§.width / 2;
                              addr200:
                              if(!(_loc6_ || this))
                              {
                                 continue;
                              }
                              if(_loc7_)
                              {
                                 continue loop5;
                              }
                              this.§]"7§.x = this.§'"1§.width / 2;
                              loop9:
                              while(true)
                              {
                                 this.§]"7§.y = this.§'"1§.height / 2;
                                 loop10:
                                 do
                                 {
                                    addChild(this.§ !T§);
                                    while(true)
                                    {
                                       if(!_loc7_)
                                       {
                                          if(_loc7_)
                                          {
                                             break;
                                          }
                                          continue loop4;
                                       }
                                       continue loop9;
                                       addr163:
                                       addChild(this.§]"7§);
                                       if(!_loc7_)
                                       {
                                          continue loop10;
                                       }
                                    }
                                    loop8:
                                    while(true)
                                    {
                                       if(!(_loc7_ && this))
                                       {
                                          §§goto(addr200);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§ !T§.y = this.§'"1§.height / 2;
                                             continue loop8;
                                          }
                                          addr219:
                                       }
                                    }
                                    continue loop6;
                                 }
                                 while(!(_loc6_ || param1));
                                 
                                 return;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr219);
               }
            }
            §§goto(addr90);
         }
         §§goto(addr32);
      }
      
      public function get §,"8§() : Boolean
      {
         return this.§%g§;
      }
      
      public function get §@!h§() : String
      {
         return this.§,!E§;
      }
      
      public function §,!$§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ !T§.visible = param1;
            while(true)
            {
               this.§]"7§.visible = !this.§%g§ && !param1;
               loop1:
               while(_loc3_ || _loc3_)
               {
                  while(true)
                  {
                     this.§'"1§.alpha = !!param1 ? Number(this.§?"#§) : Number(this.§3!h§);
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr79);
      }
      
      public function get §7!q§() : Boolean
      {
         return this.§ !T§.visible;
      }
   }
}
