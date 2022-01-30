package §"r§
{
   import §0!$§.§#!-§;
   import §6!^§.§>m§;
   import flash.display.Stage;
   
   public class §48§
   {
       
      
      private var §?!W§:Vector.<§"j§>;
      
      protected var §^f§:§"j§;
      
      private var §=j§:String;
      
      private var §5!E§:String;
      
      protected var §?"5§:§>m§ = null;
      
      private var §;!;§:Number;
      
      private var §36§:Number;
      
      public function §48§(param1:§>m§)
      {
         super();
         this.§?!W§ = new Vector.<§"j§>();
         this.§?"5§ = param1;
         this.§;!;§ = this.§?"5§.stage.stageWidth;
         this.§36§ = this.§?"5§.stage.stageHeight;
      }
      
      public function §,>§() : String
      {
         if(this.§^f§ != null)
         {
            return this.§^f§.mName;
         }
         return §"j§.§7!'§;
      }
      
      public function §2m§() : §"j§
      {
         if(this.§^f§ != null)
         {
            return this.§^f§;
         }
         return null;
      }
      
      public function §81§(param1:String) : §"j§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§?!W§.length)
         {
            if((this.§?!W§[_loc2_] as §"j§).mName == param1)
            {
               return this.§?!W§[_loc2_] as §"j§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §?n§(param1:String) : void
      {
         this.§=j§ = param1;
      }
      
      public function get §0W§() : Boolean
      {
         return this.§=j§ != §"j§.§7!'§;
      }
      
      public function §]!'§() : String
      {
         return this.§=j§;
      }
      
      public function §4l§() : String
      {
         return this.§5!E§;
      }
      
      public function §!0§() : Boolean
      {
         if(this.§=j§ != §"j§.§7!'§)
         {
            this.§2J§(this.§=j§);
            this.setViewSize(this.§;!;§,this.§36§);
            this.§5!E§ = this.§=j§;
            this.§=j§ = §"j§.§7!'§;
            return true;
         }
         return false;
      }
      
      public function §2J§(param1:String) : Boolean
      {
         var _loc2_:§"j§ = null;
         var _loc3_:§"j§ = null;
         for each(_loc3_ in this.§?!W§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §#!-§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§^f§ != null)
         {
            §#!-§.log("deActivate state: " + this.§^f§.mName);
            _loc4_ = this.§^f§.§6! §;
            this.§^f§.§6! § = false;
            this.§^f§.deActivate();
            this.previousStateDeactivate();
            this.§?"5§.removeChild(this.§^f§.§2!&§);
         }
         this.§^f§ = _loc2_;
         §#!-§.log("Activate state: " + this.§^f§.mName);
         this.stage.frameRate = this.§^f§.§8!L§();
         this.§?"5§.addChildAt(this.§^f§.§2!&§,0);
         this.§^f§.activate(this.§4l§());
         this.§^f§.§3"0§(_loc4_);
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §`1§(param1:§"j§) : Boolean
      {
         if(param1 != null)
         {
            this.§?!W§.push(param1);
            param1.§>v§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§^f§)
         {
            return §"j§.§?x§;
         }
         if(this.§^f§.nextState)
         {
            return §"j§.§-!2§;
         }
         return this.§^f§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§?"5§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§?"5§.height;
      }
      
      public function get canvas() : §>m§
      {
         return this.§?"5§;
      }
      
      public function get stage() : Stage
      {
         return this.§?"5§.stage;
      }
      
      public function §@6§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§^f§)
         {
            this.§^f§.setViewSize(param1,param2);
         }
         this.§;!;§ = param1;
         this.§36§ = param2;
      }
   }
}
