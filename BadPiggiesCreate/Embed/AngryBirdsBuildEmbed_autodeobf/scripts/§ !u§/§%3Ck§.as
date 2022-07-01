package § !u§
{
   import §"!E§.§#!'§;
   import §"!E§.§[!s§;
   import §#!4§.§'^§;
   import §#!4§.§<f§;
   import §=U§.§3p§;
   import §?!6§.§1!!§;
   import §?!6§.§]!@§;
   import §]Z§.§,d§;
   import §]Z§.§7!n§;
   import com.rovio.assets.§1F§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   
   public class §<k§
   {
       
      
      private var §`!m§:§#!'§;
      
      private var §2!^§:§<k§;
      
      private var §,j§:Vector.<§<k§>;
      
      private var §?n§:Vector.<§9y§>;
      
      private var §1<§:int = 0;
      
      private var §7f§:§[!s§;
      
      private var §8=§:Vector.<§'^§>;
      
      private var §"!H§:§&^§;
      
      public function §<k§(param1:§[!s§, param2:§#!'§ = null)
      {
         this.§,j§ = new Vector.<§<k§>();
         this.§?n§ = new Vector.<§9y§>();
         this.§8=§ = new Vector.<§'^§>();
         super();
         this.§7f§ = param1;
         this.§`!m§ = param2;
      }
      
      public function §=!^§(param1:String) : void
      {
         var _loc3_:§,d§ = null;
         var _loc4_:Class = null;
         var _loc5_:MovieClip = null;
         var _loc6_:int = 0;
         var _loc7_:§9y§ = null;
         var _loc8_:String = null;
         var _loc9_:§]!@§ = null;
         var _loc10_:BitmapData = null;
         var _loc2_:Array = §1!!§.§`Y§();
         if(param1 == "Themes")
         {
            for each(_loc3_ in §7!n§.§=!k§)
            {
               if(_loc4_ = §1F§.§"!_§(_loc3_.§?!F§,false))
               {
                  _loc5_ = new _loc4_();
                  _loc6_ = 0;
                  while(_loc6_ < _loc5_.numChildren)
                  {
                     _loc5_.getChildAt(_loc6_).x = _loc5_.getChildAt(_loc6_).x + _loc5_.width / 2;
                     _loc5_.getChildAt(_loc6_).y = _loc5_.getChildAt(_loc6_).y + _loc5_.height / 2;
                     _loc6_++;
                  }
                  _loc7_ = new §9y§(_loc3_.mName,this.§7f§,_loc5_,true);
                  this.§?n§.push(_loc7_);
               }
            }
         }
         else if(param1 != null)
         {
            for each(_loc8_ in _loc2_)
            {
               if((_loc9_ = §1!!§.§#P§(_loc8_)) && param1 == _loc9_.§+D§)
               {
                  _loc10_ = §3p§.§`!t§.§`E§(_loc9_.§>p§);
                  _loc7_ = new §9y§(_loc8_,this.§7f§,new Bitmap(_loc10_,"auto",true));
                  this.§?n§.push(_loc7_);
                  _loc7_.§+w§(0,0);
               }
            }
         }
      }
      
      public function addItem(param1:String) : void
      {
         var _loc3_:BitmapData = null;
         var _loc4_:§9y§ = null;
         var _loc2_:§]!@§ = §1!!§.§#P§(param1);
         if(_loc2_)
         {
            _loc3_ = §3p§.§`!t§.§`E§(_loc2_.§>p§);
            _loc4_ = new §9y§(param1,this.§7f§,new Bitmap(_loc3_,"auto",true));
            this.§?n§.push(_loc4_);
            _loc4_.§+w§(0,0);
         }
      }
      
      public function §catch§(param1:String) : void
      {
         var _loc2_:int = this.§?n§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§?n§[_loc2_].mName == param1)
            {
               this.§?n§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §=_§(param1:§#!'§) : §<k§
      {
         var _loc2_:§<k§ = null;
         _loc2_ = new §<k§(this.§7f§,param1);
         this.§,j§.push(_loc2_);
         if(this.§2!^§ == null)
         {
            this.§2!^§ = this.§,j§[0];
         }
         return _loc2_;
      }
      
      public function §9!k§(param1:§'^§) : void
      {
         this.§8=§.push(param1);
      }
      
      private function §`!h§() : Boolean
      {
         return this.§`!m§.§-Y§ == §<f§.COMPONENT_STATE_ACTIVE_DEFAULT;
      }
      
      public function §8!9§() : Boolean
      {
         if(this.§`!m§ && !this.§`!h§())
         {
            return false;
         }
         if(this.§2!^§)
         {
            return this.§2!^§.§8!9§();
         }
         return true;
      }
      
      public function §#!q§() : void
      {
         if(this.§`!m§)
         {
            if(this.§"!H§)
            {
               this.§"!H§.§ B§(this.§`!m§.mClip);
            }
            this.§`!m§.setComponentState(§<f§.§`O§);
         }
         else if(this.§2!^§)
         {
            this.§2!^§.§#!q§();
         }
      }
      
      public function §;?§(param1:§#!'§, param2:Boolean, param3:Boolean = false) : Boolean
      {
         var _loc5_:§<k§ = null;
         var _loc6_:Boolean = false;
         var _loc4_:Boolean = false;
         if(this.§`!m§ == param1 && this.§`!m§.§-Y§ == §<f§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            return true;
         }
         for each(_loc5_ in this.§,j§)
         {
            if(_loc6_ = _loc5_.§;?§(param1,param2))
            {
               _loc4_ = true;
               this.§2!^§ = _loc5_;
            }
         }
         if(this.§`!m§ == param1 || param3)
         {
            _loc4_ = true;
            if(this.§2!^§ && param2)
            {
               this.§2!^§.§;?§(param1,param2,true);
            }
         }
         if(this.§`!m§)
         {
            if(_loc4_)
            {
               if(this.§"!H§)
               {
                  this.§"!H§.§@!C§(this.§`!m§.mClip);
               }
               this.§`!m§.setComponentState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
               this.§0!1§();
            }
            else
            {
               if(this.§"!H§)
               {
                  this.§"!H§.§ B§(this.§`!m§.mClip);
               }
               this.§`!m§.setComponentState(§<f§.§`O§);
               this.§@m§();
            }
         }
         return _loc4_;
      }
      
      private function §0!1§() : void
      {
         var _loc1_:§<k§ = null;
         var _loc2_:§'^§ = null;
         for each(_loc1_ in this.§,j§)
         {
            _loc1_.§`!m§.setVisibility(true);
         }
         for each(_loc2_ in this.§8=§)
         {
            _loc2_.setVisibility(true);
         }
      }
      
      private function §@m§() : void
      {
         var _loc1_:§<k§ = null;
         var _loc2_:§9y§ = null;
         var _loc3_:§'^§ = null;
         for each(_loc1_ in this.§,j§)
         {
            _loc1_.§`!m§.setVisibility(false);
         }
         for each(_loc2_ in this.§?n§)
         {
            _loc2_.setActiveStatus(false);
            _loc2_.§+w§(0,0);
            _loc2_.setVisibility(false);
         }
         for each(_loc3_ in this.§8=§)
         {
            _loc3_.setVisibility(false);
         }
      }
      
      public function §>!X§() : void
      {
         var _loc1_:§<k§ = null;
         var _loc2_:§9y§ = null;
         for each(_loc1_ in this.§,j§)
         {
            _loc1_.§>!X§();
         }
         for each(_loc2_ in this.§?n§)
         {
            _loc2_.setActiveStatus(false);
            _loc2_.§+w§(0,0);
            _loc2_.setVisibility(false);
         }
      }
      
      public function §]B§(param1:int, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         if(param1 == 1)
         {
            if(this.§2!^§ == null)
            {
               return;
            }
            if(this.§2!^§.§`!h§())
            {
               _loc3_ = this.§,j§.indexOf(this.§2!^§);
               _loc3_ = (_loc3_ + (!!param2 ? 1 : -1) + this.§,j§.length) % this.§,j§.length;
               this.§2!^§ = this.§,j§[_loc3_];
            }
            this.§;?§(this.§2!^§.§`!m§,true);
         }
         else
         {
            this.§2!^§.§]B§(param1 - 1,param2);
         }
      }
      
      public function §8a§() : Vector.<§9y§>
      {
         if(this.§2!^§ != null)
         {
            return this.§2!^§.§8a§();
         }
         return this.§?n§;
      }
      
      public function §`!G§() : int
      {
         return !!this.§2!^§ ? int(this.§2!^§.§`!G§()) : int(this.§1<§);
      }
      
      public function §''§(param1:int) : void
      {
         if(this.§2!^§)
         {
            this.§2!^§.§''§(param1);
         }
         else
         {
            this.§1<§ = param1;
            this.§@m§();
         }
      }
      
      public function §+!D§(param1:§&^§) : void
      {
         this.§"!H§ = param1;
      }
      
      public function §]!E§(param1:§#!'§) : §<k§
      {
         var _loc2_:§<k§ = null;
         var _loc3_:§<k§ = null;
         if(this.§`!m§ == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§,j§)
         {
            _loc3_ = _loc2_.§]!E§(param1);
            if(_loc3_)
            {
               return _loc3_;
            }
         }
         return null;
      }
   }
}
