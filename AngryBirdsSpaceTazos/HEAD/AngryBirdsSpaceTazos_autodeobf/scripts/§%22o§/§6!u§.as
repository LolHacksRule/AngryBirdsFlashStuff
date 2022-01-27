package §"o§
{
   import §@u§.§#'§;
   import §`!w§.§^!$§;
   import flash.display.Stage;
   
   public class §6!u§
   {
       
      
      private var §7"%§:Vector.<§>!!§>;
      
      protected var §4!<§:§>!!§;
      
      private var § !_§:String;
      
      private var §["#§:String;
      
      protected var §?"3§:§#'§ = null;
      
      private var §?m§:Number;
      
      private var §4"%§:Number;
      
      public function §6!u§(param1:§#'§)
      {
         super();
         this.§7"%§ = new Vector.<§>!!§>();
         this.§?"3§ = param1;
         this.§?m§ = this.§?"3§.stage.stageWidth;
         this.§4"%§ = this.§?"3§.stage.stageHeight;
      }
      
      public function §;y§() : String
      {
         if(this.§4!<§ != null)
         {
            return this.§4!<§.mName;
         }
         return §>!!§.§8!l§;
      }
      
      public function §[Z§() : §>!!§
      {
         if(this.§4!<§ != null)
         {
            return this.§4!<§;
         }
         return null;
      }
      
      public function § 2§(param1:String) : §>!!§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§7"%§.length)
         {
            if((this.§7"%§[_loc2_] as §>!!§).mName == param1)
            {
               return this.§7"%§[_loc2_] as §>!!§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function § !I§(param1:String) : void
      {
         this.§ !_§ = param1;
      }
      
      public function get §=p§() : Boolean
      {
         return this.§ !_§ != §>!!§.§8!l§;
      }
      
      public function §>!e§() : String
      {
         return this.§ !_§;
      }
      
      public function §'>§() : String
      {
         return this.§["#§;
      }
      
      public function §8!I§() : Boolean
      {
         if(this.§ !_§ != §>!!§.§8!l§)
         {
            this.§]!R§(this.§ !_§);
            this.setViewSize(this.§?m§,this.§4"%§);
            this.§["#§ = this.§ !_§;
            this.§ !_§ = §>!!§.§8!l§;
            return true;
         }
         return false;
      }
      
      public function §]!R§(param1:String) : Boolean
      {
         var _loc2_:§>!!§ = null;
         var _loc3_:§>!!§ = null;
         for each(_loc3_ in this.§7"%§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §^!$§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§4!<§ != null)
         {
            §^!$§.log("deActivate state: " + this.§4!<§.mName);
            _loc4_ = this.§4!<§.§&"!§;
            this.§4!<§.§&"!§ = false;
            this.§4!<§.deActivate();
            this.previousStateDeactivate();
            this.§?"3§.removeChild(this.§4!<§.§5"'§);
         }
         this.§4!<§ = _loc2_;
         §^!$§.log("Activate state: " + this.§4!<§.mName);
         this.stage.frameRate = this.§4!<§.§6[§();
         this.§?"3§.addChildAt(this.§4!<§.§5"'§,0);
         this.§4!<§.activate(this.§'>§());
         this.§4!<§.§%"H§(_loc4_);
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §0!c§(param1:§>!!§) : Boolean
      {
         if(param1 != null)
         {
            this.§7"%§.push(param1);
            param1.§0s§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§4!<§)
         {
            return §>!!§.§6q§;
         }
         return this.§4!<§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§?"3§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§?"3§.height;
      }
      
      public function get canvas() : §#'§
      {
         return this.§?"3§;
      }
      
      public function get stage() : Stage
      {
         return this.§?"3§.stage;
      }
      
      public function §'!p§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§4!<§)
         {
            this.§4!<§.setViewSize(param1,param2);
         }
         this.§?m§ = param1;
         this.§4"%§ = param2;
      }
   }
}
