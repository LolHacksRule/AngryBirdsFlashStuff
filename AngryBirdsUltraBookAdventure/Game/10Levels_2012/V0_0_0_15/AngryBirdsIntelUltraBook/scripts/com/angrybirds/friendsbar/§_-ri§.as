package com.angrybirds.friendsbar
{
   import §_-01E§.§_-5z§;
   import §_-01E§.§_-M3§;
   import §_-01E§.§_-xz§;
   import §_-05L§.§_-6G§;
   import §_-05L§.§_-K5§;
   import §_-0BH§.§_-FK§;
   import §_-0EZ§.§_-48§;
   import §_-0EZ§.§_-7n§;
   import §_-4g§.§_-pX§;
   import §_-AZ§.§_-07C§;
   import §_-AZ§.§_-Vh§;
   import §_-eS§.§_-OY§;
   import com.AngryBirds.friendsbar.FriendsBarAsset;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §_-ri§ extends Sprite
   {
      
      public static const §_-f0§:String = "SidebarButtonStateInfo";
      
      public static const include:String = "SidebarButtonStatePlay";
      
      public static const §_-02b§:String = "SidebarButtonStateNone";
       
      
      private var §_-Jt§:§_-6G§;
      
      private var §_-03x§:Array;
      
      private var §_-9-§:FriendsBarAsset;
      
      private var §_-pl§:String;
      
      private var §const§:§_-7n§;
      
      private var §_-Lp§:String = "";
      
      private var §_-05U§:§_-48§;
      
      private var §_-ck§:String;
      
      private var §_-p8§:Boolean;
      
      public function §_-ri§(param1:§_-7n§, param2:String, param3:String)
      {
         super();
         §_-K5§.§_-EE§ = param3;
         this.§_-ck§ = param3;
         this.§const§ = param1;
         this.§_-pl§ = param2;
         this.init();
      }
      
      public function §_-0F1§(param1:String) : void
      {
         this.§_-9-§.§_-01t§.text = param1;
      }
      
      private function init() : void
      {
         this.§_-9-§ = new FriendsBarAsset();
         addChild(this.§_-9-§);
         this.§_-0F1§("Total scores");
         this.§_-xK§();
         MovieClip(this.§_-9-§.§_-PF§.soundsOff).mouseEnabled = false;
         MovieClip(this.§_-9-§.§_-PF§.soundsOff).mouseChildren = false;
         this.§_-Jt§ = new §_-6G§(250,250,[],§_-K5§,2,15);
         addChild(this.§_-Jt§.scrollerSprite);
         this.§_-Jt§.scrollerSprite.rotation = 90;
         this.§_-Jt§.scrollerSprite.x = 180 + 10;
         this.§_-Jt§.scrollerSprite.y = 150;
         this.§_-9-§.§_-Eo§.addEventListener(MouseEvent.CLICK,this.§_-Jp§);
         this.§_-9-§.§_-0DL§.addEventListener(MouseEvent.CLICK,this.§_-fA§);
         this.§_-9-§.§_-0DL§.visible = false;
         this.§_-9-§.§_-Eo§.visible = false;
         this.§_-9-§.§_-PF§.btnInvite.addEventListener(MouseEvent.CLICK,this.§_-Mj§);
         this.§_-9-§.§_-PF§.btnFullscreen.addEventListener(MouseEvent.CLICK,this.§_-06J§);
         this.§_-9-§.§_-PF§.btnSound.addEventListener(MouseEvent.CLICK,this.§_-6x§);
         this.§_-9-§.§_-PF§.btnInfo.addEventListener(MouseEvent.CLICK,this.§_-Yo§);
         this.§_-9-§.§_-PF§.btnTutorial.addEventListener(MouseEvent.CLICK,this.§_-TF§);
         this.§_-9-§.§_-1M§.addEventListener(MouseEvent.CLICK,this.§_-cE§);
         this.§_-Jt§.scrollerSprite.addEventListener(§_-07C§.§_-S1§,this.§_-Cl§);
         this.§const§.§_-0-1§().addEventListener(§_-Vh§.§_-04P§,this.§_-zu§);
         if(!this.§const§.§_-0-1§().§_-Er§)
         {
            this.§_-zu§(null);
         }
      }
      
      public function §_-RB§(param1:String = "SidebarButtonStateInfo") : void
      {
         §_-FK§.log("Changing state");
         if(param1 == §_-f0§)
         {
            §_-FK§.log("Info state");
            SimpleButton(this.§_-9-§.§_-PF§.btnInfo).visible = true;
            SimpleButton(this.§_-9-§.§_-PF§.btnTutorial).visible = false;
            SimpleButton(this.§_-9-§.§_-PF§.btnFullscreen).visible = true;
         }
         else if(param1 == §_-02b§)
         {
            §_-FK§.log("None state");
            SimpleButton(this.§_-9-§.§_-PF§.btnInfo).visible = false;
            SimpleButton(this.§_-9-§.§_-PF§.btnTutorial).visible = true;
         }
         else if(param1 == include)
         {
            §_-FK§.log("Play state");
            SimpleButton(this.§_-9-§.§_-PF§.btnInfo).visible = false;
            SimpleButton(this.§_-9-§.§_-PF§.btnTutorial).visible = true;
         }
         SimpleButton(this.§_-9-§.§_-PF§.btnTutorial).alpha = param1 == §_-02b§ ? Number(0.5) : Number(1);
         SimpleButton(this.§_-9-§.§_-PF§.btnTutorial).mouseEnabled = param1 == §_-02b§ ? false : true;
      }
      
      public function §_-xK§() : void
      {
         if(§_-pX§.§_-051§())
         {
            MovieClip(this.§_-9-§.§_-PF§.soundsOff).visible = false;
         }
         else
         {
            MovieClip(this.§_-9-§.§_-PF§.soundsOff).visible = true;
         }
      }
      
      private function §_-Mj§(param1:MouseEvent) : void
      {
         dispatchEvent(new §_-07C§(§_-07C§.§_-S1§));
      }
      
      private function §_-Cl§(param1:§_-07C§) : void
      {
         var _loc2_:§_-5z§ = param1.data as §_-5z§;
         §_-48§.§_-L0§.push(_loc2_.userId);
         if(this.§const§.§_-0-1§().data.indexOf(_loc2_) != -1)
         {
            this.§const§.§_-0-1§().data.splice(this.§const§.§_-0-1§().data.indexOf(_loc2_),1);
         }
         if(this.§_-05U§ && this.§_-05U§.data.indexOf(_loc2_) != -1)
         {
            this.§_-05U§.data.splice(this.§_-05U§.data.indexOf(_loc2_),1);
         }
         this.§_-sJ§();
         this.§_-0-J§();
         dispatchEvent(new §_-07C§(§_-07C§.§_-S1§,_loc2_));
      }
      
      private function §_-06J§(param1:MouseEvent) : void
      {
         dispatchEvent(new §_-07C§(§_-07C§.§_-Yr§));
      }
      
      private function §_-6x§(param1:MouseEvent) : void
      {
         dispatchEvent(new §_-07C§(§_-07C§.§_-K8§));
         this.§_-xK§();
      }
      
      private function §_-Yo§(param1:MouseEvent) : void
      {
         §_-FK§.log(§_-07C§.§_-H7§);
         dispatchEvent(new §_-07C§(§_-07C§.§_-H7§));
      }
      
      private function §_-TF§(param1:MouseEvent) : void
      {
         §_-FK§.log(§_-07C§.§_-099§);
         dispatchEvent(new §_-07C§(§_-07C§.§_-099§));
      }
      
      private function §_-Jp§(param1:MouseEvent) : void
      {
         this.scroll(-this.§_-Jt§.§_-xC§);
      }
      
      private function §_-fA§(param1:MouseEvent) : void
      {
         this.scroll(this.§_-Jt§.§_-xC§);
      }
      
      private function §_-cE§(param1:MouseEvent) : void
      {
         §_-OY§.§_-7i§("http://www.facebook.com/Intel");
         §_-rG§.§_-rY§.§_-DE§();
         var _loc3_:URLRequest = new URLRequest("http://www.facebook.com/Intel");
         navigateToURL(_loc3_,"_blank");
      }
      
      override public function set height(param1:Number) : void
      {
         this.resize(param1);
      }
      
      private function resize(param1:Number) : void
      {
         var _loc2_:Number = Math.max(param1,330);
         this.§_-9-§.§_-08R§.height = _loc2_ - this.§_-9-§.§_-v3§.height - this.§_-9-§.§_-6n§.height + 5;
         this.§_-9-§.§_-6n§.y = this.§_-9-§.§_-08R§.y + this.§_-9-§.§_-08R§.height;
         this.§_-9-§.§_-PF§.y = this.§_-9-§.§_-6n§.y + 55;
         this.§_-9-§.§_-0DL§.y = this.§_-9-§.§_-6n§.y + 45;
         var _loc3_:Number = _loc2_ - (this.§_-9-§.§_-6n§.height - 30 + this.§_-9-§.§_-v3§.height - 30);
         this.§_-Jt§.§_-7Z§(_loc3_);
         this.§_-0-J§();
      }
      
      public function §_-0-j§(param1:String, param2:String, param3:§_-48§ = null, param4:Boolean = false) : void
      {
         if(this.§_-Lp§ == param2 && !this.§_-p8§)
         {
            return;
         }
         this.§_-p8§ = false;
         if(this.§_-05U§ && this.§_-Lp§ != param2)
         {
            this.§_-05U§.removeEventListener(§_-Vh§.§_-04P§,this.§_-FZ§);
            this.§_-05U§ = null;
         }
         if(param2)
         {
            §_-K5§.§_-dT§ = true;
            this.§_-0F1§("Level scores");
            if(param3 == null)
            {
               this.§_-05U§ = this.§const§.§_-0z§(param1,param2,param4);
            }
            else
            {
               this.§_-05U§ = param3;
            }
            if(!(param4 = false))
            {
               this.§_-05U§.addEventListener(§_-Vh§.§_-04P§,this.§_-FZ§);
            }
            §_-K5§.§_-dT§ = true;
            this.§_-Jt§.data = [];
            this.§_-0-J§();
            if(!this.§_-05U§.§_-Er§)
            {
               this.§_-05U§.§_-0-C§(0,0);
            }
            this.§_-RB§(include);
         }
         else
         {
            this.§_-0F1§("Total scores");
            §_-K5§.§_-dT§ = false;
            this.§_-03x§ = this.§const§.§_-0-1§().data;
            this.§_-sJ§();
            this.§_-01l§(this.§const§.§_-0-1§().§_-tm§);
            this.§_-0-J§();
            this.§const§.§_-0-1§().§_-0-C§(0,0);
            this.§_-RB§(§_-f0§);
         }
         this.§_-Lp§ = param2;
      }
      
      private function §_-zu§(param1:§_-Vh§) : void
      {
         if(this.§_-05U§)
         {
            return;
         }
         if(this.§_-Jt§.data != this.§const§.§_-0-1§().data)
         {
            this.§_-03x§ = this.§const§.§_-0-1§().data;
            this.§_-sJ§();
         }
         else
         {
            this.§_-Jt§.§_-8B§();
         }
         this.§_-01l§(this.§const§.§_-0-1§().§_-tm§);
         this.§_-0-J§();
      }
      
      private function §_-FZ§(param1:§_-Vh§) : void
      {
         §_-K5§.§_-dT§ = true;
         this.§_-03x§ = this.§_-05U§.data;
         this.§_-sJ§();
         this.§_-01l§(this.§_-05U§.§_-tm§);
         this.§_-0-J§();
      }
      
      public function §_-HJ§(param1:Array) : void
      {
         this.§_-p8§ = true;
         §_-K5§.§_-dT§ = false;
         this.§_-03x§ = param1;
         this.§_-sJ§();
         this.§_-0-J§();
      }
      
      public function §_-01l§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param1 != -1)
         {
            _loc3_ = this.§_-Jt§.offset;
            _loc4_ = Math.floor(this.§_-Jt§.§_-xC§ / 2);
            _loc5_ = param1 - _loc4_ - _loc3_;
            this.§_-Jt§.scroll(_loc5_,!param2);
         }
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§_-Jt§.scroll(param1);
            this.§_-0-J§();
         }
      }
      
      private function §_-0-J§() : void
      {
         var _loc1_:* = this.§_-Jt§.offset != 0;
         var _loc2_:* = this.§_-Jt§.offset != this.§_-Jt§.data.length - this.§_-Jt§.§_-xC§;
         this.§_-9-§.§_-Eo§.visible = _loc1_;
         this.§_-9-§.§_-0DL§.visible = _loc2_;
      }
      
      public function get §with§() : §_-48§
      {
         return this.§_-05U§;
      }
      
      public function §_-R0§(param1:String, param2:int, param3:int, param4:int, param5:Array, param6:Boolean = false) : int
      {
         var _loc10_:Object = null;
         if(!this.§_-05U§ || this.§_-Lp§ != param1)
         {
            return 0;
         }
         var _loc7_:Array = [];
         var _loc8_:int = this.§_-Jt§.offset;
         var _loc9_:int = this.§_-05U§.§_-R0§(param2,param3,param4,_loc7_);
         this.§_-03x§ = this.§_-05U§.data;
         this.§_-sJ§();
         this.§_-01l§(_loc9_ - 1,true);
         for each(_loc10_ in _loc7_)
         {
            param5.push(_loc10_);
         }
         this.§_-0-J§();
         return _loc9_;
      }
      
      public function §_-hC§(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         if(param1 == 0)
         {
            this.§_-9-§.§_-PF§.txtInboxItemCount.visible = false;
            this.§_-9-§.§_-PF§.mcItemCountBg.visible = false;
         }
         else
         {
            this.§_-9-§.§_-PF§.txtInboxItemCount.visible = true;
            this.§_-9-§.§_-PF§.mcItemCountBg.visible = true;
            _loc2_ = this.§_-CZ§(param1);
            this.§_-9-§.§_-PF§.txtInboxItemCount.text.text = _loc2_;
            _loc3_ = this.§_-9-§.§_-PF§.mcItemCountBg;
            _loc4_ = _loc3_.width;
            _loc3_.scaleX = 1 + (_loc2_.length - 1) / 7;
            _loc3_.x = this.§_-9-§.§_-PF§.txtInboxItemCount.x + this.§_-9-§.§_-PF§.txtInboxItemCount.width / 2 - _loc3_.width / 2;
         }
      }
      
      private function §_-sJ§() : void
      {
         var _loc4_:§_-M3§ = null;
         var _loc5_:String = null;
         var _loc1_:Array = §_-xz§.§_-3S§.§_-Fj§();
         var _loc2_:Array = this.§_-03x§.concat();
         var _loc3_:int = this.§_-03x§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§_-03x§[_loc3_];
            for each(_loc5_ in _loc1_)
            {
               if(_loc5_ == _loc4_.userId)
               {
                  _loc2_.splice(_loc3_,1);
               }
            }
            _loc3_--;
         }
         this.§_-Jt§.data = _loc2_;
      }
      
      private function §_-CZ§(param1:Number) : String
      {
         var _loc2_:* = null;
         param1 = Math.min(param1,99000000);
         if(param1 >= 100000)
         {
            param1 /= 1000000;
            _loc2_ = param1.toPrecision(2).slice(0,3) + "M";
         }
         else if(param1 >= 1000)
         {
            param1 /= 1000;
            _loc2_ = param1.toPrecision(2) + "k";
         }
         else
         {
            _loc2_ = param1.toString();
         }
         return _loc2_;
      }
   }
}
