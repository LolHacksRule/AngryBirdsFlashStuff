package §7&§
{
   import §;"7§.§="<§;
   import com.rovio.assets.§69§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class §"!-§ extends Sprite
   {
      
      private static const §%!P§:int = 30;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §%!P§ = 30;
         }
      }
      
      private const §-+§:Number = 0.8;
      
      private const §'d§:Number = 0.3;
      
      private var §"!w§:Boolean;
      
      private var §var§:Bitmap;
      
      private var § !S§:DisplayObject;
      
      private var §"!r§:DisplayObject;
      
      private var §@F§:String;
      
      public function §"!-§(param1:String, param2:Boolean)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param2)
         {
            super();
            if(_loc7_ || this)
            {
               addr33:
               this.§"!w§ = param2;
            }
            var _loc3_:BitmapData = §="<§.§[E§.§`d§(param1);
            if(_loc7_ || this)
            {
               this.§var§ = new Bitmap(_loc3_,"auto",true);
               while(true)
               {
                  this.§var§.smoothing = true;
                  addr84:
                  loop1:
                  while(_loc7_)
                  {
                     while(true)
                     {
                        this.§var§.width = Math.min(this.§var§.width,§%!P§);
                        continue loop1;
                     }
                  }
               }
            }
            while(true)
            {
               this.§var§.scaleY = this.§var§.scaleX;
               if(!(_loc7_ || _loc3_))
               {
                  continue;
               }
               if(_loc7_)
               {
                  if(true)
                  {
                     break;
                  }
               }
               else
               {
                  §§goto(addr84);
               }
               §§goto(addr68);
            }
            var _loc4_:Class = §69§.§ 0§("checkMark");
            if(!_loc6_)
            {
               this.§ !S§ = new _loc4_();
            }
            var _loc5_:Class = §69§.§ 0§("crossMark");
            if(_loc7_ || this)
            {
               this.§"!r§ = new _loc5_();
               loop4:
               while(true)
               {
                  this.§@F§ = param1;
                  while(true)
                  {
                     addChild(this.§var§);
                     while(!_loc6_)
                     {
                        this.§ !S§.x = this.§var§.width / 2;
                        loop7:
                        while(true)
                        {
                           this.§ !S§.y = this.§var§.height / 2;
                           while(true)
                           {
                              this.§"!r§.x = this.§var§.width / 2;
                              while(!_loc6_)
                              {
                                 this.§"!r§.y = this.§var§.height / 2;
                                 while(_loc7_)
                                 {
                                    continue loop7;
                                 }
                              }
                           }
                        }
                        if(!(_loc6_ && param1))
                        {
                           return;
                           addr154:
                        }
                     }
                     continue loop4;
                  }
               }
            }
            §§goto(addr154);
         }
         §§goto(addr33);
      }
      
      public function get §"">§() : Boolean
      {
         return this.§"!w§;
      }
      
      public function get §#!+§() : String
      {
         return this.§@F§;
      }
      
      public function §2!T§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§ !S§.visible = param1;
            while(true)
            {
               this.§"!r§.visible = !this.§"!w§ && !param1;
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.§var§.alpha = !!param1 ? Number(this.§'d§) : Number(this.§-+§);
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
      
      public function get §^8§() : Boolean
      {
         return this.§ !S§.visible;
      }
   }
}
