package §]n§
{
   import §""<§.§#N§;
   import §;!,§.§6!`§;
   import flash.display.Stage;
   
   public class §5!N§
   {
       
      
      private var §2!g§:Vector.<§0!g§>;
      
      protected var §&8§:§0!g§;
      
      private var §>?§:String;
      
      private var §^!2§:String;
      
      protected var §`"D§:§6!`§ = null;
      
      private var §9!&§:Number;
      
      private var § !+§:Number;
      
      public function §5!N§(param1:§6!`§)
      {
         super();
         this.§2!g§ = new Vector.<§0!g§>();
         this.§`"D§ = param1;
         this.§9!&§ = this.§`"D§.stage.stageWidth;
         this.§ !+§ = this.§`"D§.stage.stageHeight;
      }
      
      public function §+R§() : String
      {
         if(this.§&8§ != null)
         {
            return this.§&8§.mName;
         }
         return §0!g§.§5"#§;
      }
      
      public function § ";§() : §0!g§
      {
         if(this.§&8§ != null)
         {
            return this.§&8§;
         }
         return null;
      }
      
      public function §?<§(param1:String) : §0!g§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§2!g§.length)
         {
            if((this.§2!g§[_loc2_] as §0!g§).mName == param1)
            {
               return this.§2!g§[_loc2_] as §0!g§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §2g§(param1:String) : void
      {
         this.§>?§ = param1;
      }
      
      public function get §@" §() : Boolean
      {
         return this.§>?§ != §0!g§.§5"#§;
      }
      
      public function §`!f§() : String
      {
         return this.§>?§;
      }
      
      public function §8!f§() : String
      {
         return this.§^!2§;
      }
      
      public function §[!C§() : Boolean
      {
         if(this.§>?§ != §0!g§.§5"#§)
         {
            this.§ O§(this.§>?§);
            this.setViewSize(this.§9!&§,this.§ !+§);
            this.§^!2§ = this.§>?§;
            this.§>?§ = §0!g§.§5"#§;
            return true;
         }
         return false;
      }
      
      public function § O§(param1:String) : Boolean
      {
         var _loc2_:§0!g§ = null;
         var _loc3_:§0!g§ = null;
         for each(_loc3_ in this.§2!g§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §#N§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§&8§ != null)
         {
            §#N§.log("deActivate state: " + this.§&8§.mName);
            _loc4_ = this.§&8§.§!"<§;
            this.§&8§.§!"<§ = false;
            this.§&8§.deActivate();
            this.previousStateDeactivate();
            this.§`"D§.removeChild(this.§&8§.§>#§);
         }
         this.§&8§ = _loc2_;
         §#N§.log("Activate state: " + this.§&8§.mName);
         this.stage.frameRate = this.§&8§.§5!p§();
         this.§`"D§.addChildAt(this.§&8§.§>#§,0);
         this.§&8§.activate(this.§8!f§());
         this.§&8§.§]0§(_loc4_);
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §-"%§(param1:§0!g§) : Boolean
      {
         if(param1 != null)
         {
            this.§2!g§.push(param1);
            param1.§%!@§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§&8§)
         {
            return §0!g§.§?!o§;
         }
         return this.§&8§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§`"D§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§`"D§.height;
      }
      
      public function get canvas() : §6!`§
      {
         return this.§`"D§;
      }
      
      public function get stage() : Stage
      {
         return this.§`"D§.stage;
      }
      
      public function §0"3§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§&8§)
         {
            this.§&8§.setViewSize(param1,param2);
         }
         this.§9!&§ = param1;
         this.§ !+§ = param2;
      }
   }
}
