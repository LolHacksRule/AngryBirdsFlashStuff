package §?9§
{
   import §'"&§.§9X§;
   import §8!$§.§?p§;
   import flash.display.Stage;
   
   public class §@!]§
   {
       
      
      private var §<!!§:Vector.<§ x§>;
      
      protected var §,"-§:§ x§;
      
      private var §<]§:String;
      
      private var §1J§:String;
      
      protected var §8@§:§9X§ = null;
      
      private var §;!j§:Number;
      
      private var §#u§:Number;
      
      public function §@!]§(param1:§9X§)
      {
         super();
         this.§<!!§ = new Vector.<§ x§>();
         this.§8@§ = param1;
         this.§;!j§ = this.§8@§.stage.stageWidth;
         this.§#u§ = this.§8@§.stage.stageHeight;
      }
      
      public function §>`§() : String
      {
         if(this.§,"-§ != null)
         {
            return this.§,"-§.mName;
         }
         return § x§.§1!Y§;
      }
      
      public function §4!^§() : § x§
      {
         if(this.§,"-§ != null)
         {
            return this.§,"-§;
         }
         return null;
      }
      
      public function §&!>§(param1:String) : § x§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§<!!§.length)
         {
            if((this.§<!!§[_loc2_] as § x§).mName == param1)
            {
               return this.§<!!§[_loc2_] as § x§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §]a§(param1:String) : void
      {
         this.§<]§ = param1;
      }
      
      public function get §1=§() : Boolean
      {
         return this.§<]§ != § x§.§1!Y§;
      }
      
      public function §?'§() : String
      {
         return this.§<]§;
      }
      
      public function §2"$§() : String
      {
         return this.§1J§;
      }
      
      public function §!J§() : Boolean
      {
         if(this.§<]§ != § x§.§1!Y§)
         {
            this.§]?§(this.§<]§);
            this.setViewSize(this.§;!j§,this.§#u§);
            this.§1J§ = this.§<]§;
            this.§<]§ = § x§.§1!Y§;
            return true;
         }
         return false;
      }
      
      public function §]?§(param1:String) : Boolean
      {
         var _loc2_:§ x§ = null;
         var _loc3_:§ x§ = null;
         for each(_loc3_ in this.§<!!§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §?p§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§,"-§ != null)
         {
            §?p§.log("deActivate state: " + this.§,"-§.mName);
            _loc4_ = this.§,"-§.§1!R§;
            this.§,"-§.§1!R§ = false;
            this.§,"-§.deActivate();
            this.previousStateDeactivate();
            this.§8@§.removeChild(this.§,"-§.§ C§);
         }
         this.§,"-§ = _loc2_;
         §?p§.log("Activate state: " + this.§,"-§.mName);
         this.stage.frameRate = this.§,"-§.§]! §();
         this.§8@§.addChildAt(this.§,"-§.§ C§,0);
         this.§,"-§.activate(this.§2"$§());
         this.§,"-§.§!T§(_loc4_);
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §<!,§(param1:§ x§) : Boolean
      {
         if(param1 != null)
         {
            this.§<!!§.push(param1);
            param1.§?5§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§,"-§)
         {
            return § x§.§;b§;
         }
         if(this.§,"-§.nextState)
         {
            return § x§.§]F§;
         }
         return this.§,"-§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§8@§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§8@§.height;
      }
      
      public function get canvas() : §9X§
      {
         return this.§8@§;
      }
      
      public function get stage() : Stage
      {
         return this.§8@§.stage;
      }
      
      public function §^B§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§,"-§)
         {
            this.§,"-§.setViewSize(param1,param2);
         }
         this.§;!j§ = param1;
         this.§#u§ = param2;
      }
   }
}
