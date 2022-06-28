package §>7§
{
   import §1!E§.§==§;
   
   public class §4f§
   {
      
      public static const §8!!§:int = 0;
      
      public static const §8k§:int = 1;
      
      public static const §4!_§:int = 2;
       
      
      public var §&%§:Array;
      
      public var §;N§:int;
      
      public var §4g§:int;
      
      public var mName:String;
      
      public var §=!R§:String;
      
      public function §4f§(param1:int, param2:String)
      {
         super();
         this.§4g§ = param1;
         this.mName = param2;
         this.§&%§ = new Array();
      }
      
      public function §>!G§(param1:§==§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§&%§[this.§&%§.length] = param1;
      }
      
      public function §<!_§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§=!R§ = param1;
         if(this.§4g§ == §8!!§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§&%§.length)
            {
               if((this.§&%§[_loc2_] as §==§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§&%§[_loc2_] as §==§).setComponentState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§&%§[_loc2_] as §==§).§8!j§ == §4+§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§&%§[_loc2_] as §==§).setComponentState(§4+§.§2v§);
               }
               _loc2_++;
            }
         }
         if(this.§4g§ == §4!_§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§&%§.length)
            {
               if((this.§&%§[_loc2_] as §==§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§&%§[_loc2_] as §==§).§8!j§ == §4+§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§&%§[_loc2_] as §==§).setComponentState(§4+§.§2v§);
                  }
                  else if((this.§&%§[_loc2_] as §==§).§8!j§ == §4+§.§2v§)
                  {
                     if(this.§4y§().length < this.§;N§)
                     {
                        (this.§&%§[_loc2_] as §==§).setComponentState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§4y§().length >= this.§;N§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§&%§.length)
                  {
                     if((this.§&%§[_loc3_] as §==§).§8!j§ == §4+§.§2v§)
                     {
                        (this.§&%§[_loc3_] as §==§).setComponentState(§4+§.§ !M§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§&%§.length)
                  {
                     if((this.§&%§[_loc3_] as §==§).§8!j§ == §4+§.§ !M§)
                     {
                        (this.§&%§[_loc3_] as §==§).setComponentState(§4+§.§2v§);
                     }
                     _loc3_++;
                  }
               }
               _loc2_++;
            }
         }
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§&%§.length)
         {
            (this.§&%§[_loc2_] as §==§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §9!^§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§&%§.length)
         {
            (this.§&%§[_loc1_] as §==§).setComponentState(§4+§.§2v§);
            _loc1_++;
         }
      }
      
      public function §?!_§(param1:Number) : void
      {
         this.§;N§ = param1;
         if(param1 == 1)
         {
            this.§4g§ = §8!!§;
         }
         else
         {
            this.§4g§ = §4!_§;
         }
      }
      
      public function §[!W§(param1:Array) : void
      {
         this.§9!^§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§<!_§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §4y§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§&%§.length)
         {
            if((this.§&%§[_loc2_] as §==§).§8!j§ == §4+§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§&%§[_loc2_] as §==§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
