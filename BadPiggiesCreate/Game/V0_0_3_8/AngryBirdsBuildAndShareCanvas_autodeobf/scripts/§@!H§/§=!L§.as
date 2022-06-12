package §@!H§
{
   import § !V§.§7!P§;
   import §!D§.§ use§;
   import §!D§.§3!6§;
   import §!g§.§&" §;
   import §!g§.§,q§;
   import §%!<§.§,6§;
   import §%!<§.§7V§;
   import §4!7§.§]!1§;
   import §9!7§.§0!`§;
   import §9!7§.§6"0§;
   import com.rovio.assets.§%"4§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   
   public class §=!L§
   {
       
      
      private var §null§:§3!6§;
      
      private var §]!^§:§=!L§;
      
      private var §]M§:Vector.<§=!L§>;
      
      private var §%`§:Vector.<§;!L§>;
      
      private var §3p§:int = 0;
      
      private var §[+§:§ use§;
      
      private var §[M§:Vector.<§0!`§>;
      
      private var §4!5§:§ 8§;
      
      public function §=!L§(param1:§ use§, param2:§3!6§ = null)
      {
         this.§]M§ = new Vector.<§=!L§>();
         this.§%`§ = new Vector.<§;!L§>();
         this.§[M§ = new Vector.<§0!`§>();
         super();
         this.§[+§ = param1;
         this.§null§ = param2;
         if(this.§null§)
         {
            this.§null§.setVisibility(false);
         }
      }
      
      public function §!!u§(param1:String) : void
      {
         var _loc3_:§&" § = null;
         var _loc4_:Class = null;
         var _loc5_:MovieClip = null;
         var _loc6_:int = 0;
         var _loc7_:§;!L§ = null;
         var _loc8_:String = null;
         var _loc9_:§,6§ = null;
         var _loc10_:BitmapData = null;
         var _loc2_:Array = §7V§.§@B§();
         if(param1 == "Themes")
         {
            for each(_loc3_ in §,q§.§8'§)
            {
               if(_loc4_ = §%"4§.§>!v§(_loc3_.§0c§,false))
               {
                  _loc5_ = new _loc4_();
                  _loc6_ = 0;
                  while(_loc6_ < _loc5_.numChildren)
                  {
                     _loc5_.getChildAt(_loc6_).x = _loc5_.getChildAt(_loc6_).x + _loc5_.width / 2;
                     _loc5_.getChildAt(_loc6_).y = _loc5_.getChildAt(_loc6_).y + _loc5_.height / 2;
                     _loc6_++;
                  }
                  _loc7_ = new §;!L§(_loc3_.mName,this.§[+§,_loc5_,true);
                  this.§%`§.push(_loc7_);
               }
            }
         }
         else if(param1 != null)
         {
            for each(_loc8_ in _loc2_)
            {
               if((_loc9_ = §7V§.§"!E§(_loc8_)) && param1 == _loc9_.§4!4§)
               {
                  _loc10_ = §7!P§.§9j§.§+"#§(_loc9_.§6u§);
                  _loc7_ = new §;!L§(_loc8_,this.§[+§,new Bitmap(_loc10_,"auto",true));
                  this.§%`§.push(_loc7_);
                  _loc7_.§8!'§(0);
               }
            }
         }
      }
      
      public function §?"-§(param1:String, param2:Number = 1) : void
      {
         var _loc4_:BitmapData = null;
         var _loc5_:§;!L§ = null;
         var _loc3_:§,6§ = §7V§.§"!E§(param1);
         if(_loc3_)
         {
            _loc4_ = §7!P§.§9j§.§+"#§(_loc3_.§6u§);
            _loc5_ = new §;!L§(param1,this.§[+§,new Bitmap(_loc4_,"auto",true),false,param2);
            this.§%`§.push(_loc5_);
            _loc5_.§8!'§(0);
         }
      }
      
      public function §3<§(param1:String) : void
      {
         var _loc2_:int = this.§%`§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§%`§[_loc2_].getItemName() == param1)
            {
               this.§%`§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §"!<§(param1:§3!6§) : §=!L§
      {
         var _loc2_:§=!L§ = null;
         _loc2_ = new §=!L§(this.§[+§,param1);
         this.§]M§.push(_loc2_);
         if(this.§]!^§ == null)
         {
            this.§]!^§ = this.§]M§[0];
         }
         return _loc2_;
      }
      
      public function §">§(param1:§0!`§) : void
      {
         this.§[M§.push(param1);
      }
      
      private function §,!g§() : Boolean
      {
         return this.§null§.§ null§ == §6"0§.COMPONENT_STATE_ACTIVE_DEFAULT;
      }
      
      public function §9M§() : Boolean
      {
         if(this.§null§ && !this.§,!g§())
         {
            return false;
         }
         if(this.§]!^§)
         {
            return this.§]!^§.§9M§();
         }
         return true;
      }
      
      public function §6!`§() : String
      {
         if(this.§null§ && !this.§,!g§())
         {
            return null;
         }
         if(this.§]!^§)
         {
            return this.§]!^§.§6!`§();
         }
         if(!this.§null§)
         {
            return null;
         }
         return this.§null§.mName;
      }
      
      public function §,i§() : void
      {
         if(this.§null§)
         {
            if(this.§4!5§)
            {
               this.§4!5§.§!i§(this.§null§.mClip);
            }
            if(this.§null§.§ null§ == §6"0§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§null§.setComponentState(§6"0§.§ B§);
            }
         }
         else if(this.§]!^§)
         {
            this.§]!^§.§,i§();
         }
      }
      
      public function §&5§(param1:§3!6§, param2:Boolean, param3:Boolean = false) : Boolean
      {
         var _loc5_:§=!L§ = null;
         var _loc6_:Boolean = false;
         var _loc7_:§=!L§ = null;
         if(!param1.mClip.mouseEnabled)
         {
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§null§ == param1 && this.§null§.§ null§ == §6"0§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            return true;
         }
         for each(_loc5_ in this.§]M§)
         {
            if(_loc6_ = _loc5_.§&5§(param1,param2))
            {
               _loc4_ = true;
               this.§]!^§ = _loc5_;
               this.§`!"§();
            }
         }
         if(this.§null§ == param1 || param3)
         {
            _loc4_ = true;
            if(!this.§]!^§ || !§]!1§.§9j§.isCategoryAvailable(this.§]!^§.§null§.mName))
            {
               for each(_loc7_ in this.§]M§)
               {
                  if(§]!1§.§9j§.isCategoryAvailable(_loc7_.§null§.mName))
                  {
                     this.§]!^§ = _loc7_;
                  }
               }
            }
            if(this.§]!^§ && param2)
            {
               this.§]!^§.§&5§(param1,param2,true);
            }
         }
         if(this.§null§)
         {
            if(_loc4_)
            {
               if(this.§4!5§)
               {
                  this.§4!5§.§?U§(this.§null§.mClip);
               }
               this.§null§.setComponentState(§6"0§.COMPONENT_STATE_ACTIVE_DEFAULT);
               this.§`!"§();
            }
            else
            {
               if(this.§4!5§)
               {
                  this.§4!5§.§!i§(this.§null§.mClip);
               }
               if(this.§null§.§ null§ == §6"0§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  this.§null§.setComponentState(§6"0§.§ B§);
               }
               this.§4<§();
            }
         }
         return _loc4_;
      }
      
      private function §`!"§() : void
      {
         var _loc1_:§=!L§ = null;
         var _loc2_:§0!`§ = null;
         for each(_loc1_ in this.§]M§)
         {
            _loc1_.§null§.setVisibility(§]!1§.§9j§.isCategoryAvailable(_loc1_.§null§.mName));
         }
         if(this.§]!^§ && this.§]!^§.§4!5§)
         {
            this.§]!^§.§4!5§.§?U§(this.§]!^§.§null§.mClip);
         }
         for each(_loc2_ in this.§[M§)
         {
            _loc2_.setVisibility(true);
         }
      }
      
      private function §4<§() : void
      {
         var _loc1_:§=!L§ = null;
         var _loc2_:§;!L§ = null;
         var _loc3_:§0!`§ = null;
         for each(_loc1_ in this.§]M§)
         {
            _loc1_.§null§.setVisibility(false);
         }
         for each(_loc2_ in this.§%`§)
         {
            _loc2_.§8!'§(0);
            _loc2_.visible = false;
         }
         for each(_loc3_ in this.§[M§)
         {
            _loc3_.setVisibility(false);
         }
      }
      
      public function §1!]§() : void
      {
         var _loc1_:§=!L§ = null;
         var _loc2_:§;!L§ = null;
         for each(_loc1_ in this.§]M§)
         {
            _loc1_.§1!]§();
         }
         for each(_loc2_ in this.§%`§)
         {
            _loc2_.§8!'§(0);
            _loc2_.visible = false;
         }
      }
      
      public function §]!n§(param1:int, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         if(param1 == 1)
         {
            if(this.§]!^§ == null)
            {
               return;
            }
            if(this.§]!^§.§,!g§())
            {
               _loc3_ = this.§]M§.indexOf(this.§]!^§);
               do
               {
                  _loc3_ = (_loc3_ + (!!param2 ? 1 : -1) + this.§]M§.length) % this.§]M§.length;
                  this.§]!^§ = this.§]M§[_loc3_];
               }
               while(!this.§]!^§.§null§.visible);
               
            }
            this.§&5§(this.§]!^§.§null§,true);
         }
         else
         {
            this.§]!^§.§]!n§(param1 - 1,param2);
         }
      }
      
      public function §=d§() : Vector.<§;!L§>
      {
         if(this.§]!^§ != null)
         {
            return this.§]!^§.§=d§();
         }
         return this.§%`§;
      }
      
      public function §2"+§(param1:§ 8§) : void
      {
         this.§4!5§ = param1;
      }
      
      public function §8!V§(param1:§3!6§) : §=!L§
      {
         var _loc2_:§=!L§ = null;
         var _loc3_:§=!L§ = null;
         if(this.§null§ == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§]M§)
         {
            _loc3_ = _loc2_.§8!V§(param1);
            if(_loc3_)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §=V§() : Vector.<§;!L§>
      {
         var _loc2_:§=!L§ = null;
         var _loc1_:Vector.<§;!L§> = new Vector.<§;!L§>();
         for each(_loc2_ in this.§]M§)
         {
            _loc1_ = _loc1_.concat(_loc2_.§=V§());
         }
         if(_loc1_ == null)
         {
            _loc1_ = new Vector.<§;!L§>();
         }
         if(this.§%`§)
         {
            _loc1_ = _loc1_.concat(this.§%`§);
         }
         return _loc1_;
      }
      
      public function §4!a§(param1:Boolean = true) : void
      {
         var _loc2_:§=!L§ = null;
         if(this.§null§)
         {
            this.§null§.setVisibility(param1 && §]!1§.§9j§.isCategoryAvailable(this.§null§.mName));
            this.§null§.setEnabled(this.§null§.visible);
         }
         for each(_loc2_ in this.§]M§)
         {
            _loc2_.§4!a§(!!this.§null§ ? Boolean(this.§null§.visible) : true);
         }
      }
   }
}
