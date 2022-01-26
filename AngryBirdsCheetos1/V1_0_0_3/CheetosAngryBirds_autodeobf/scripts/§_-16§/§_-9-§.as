package §_-16§
{
   import §_-Eg§.§_-hf§;
   
   public class §_-9-§
   {
      
      public static const §_-0-D§:int = 0;
      
      public static const §_-lO§:int = 1;
      
      public static const §_-S§:int = 2;
       
      
      public var §_-QH§:Array;
      
      public var §_-jA§:int;
      
      public var §_-IE§:int;
      
      public var mName:String;
      
      public var §_-00O§:String;
      
      public function §_-9-§(param1:int, param2:String)
      {
         super();
         this.§_-IE§ = param1;
         this.mName = param2;
         this.§_-QH§ = new Array();
      }
      
      public function §_-V2§(param1:§_-hf§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§_-QH§[this.§_-QH§.length] = param1;
      }
      
      public function §_-Sn§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§_-00O§ = param1;
         if(this.§_-IE§ == §_-0-D§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-QH§.length)
            {
               if((this.§_-QH§[_loc2_] as §_-hf§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§_-QH§[_loc2_] as §_-hf§).setComponentState(§_-8n§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§_-QH§[_loc2_] as §_-hf§).§_-Uv§ == §_-8n§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§_-QH§[_loc2_] as §_-hf§).setComponentState(§_-8n§.§_-qC§);
               }
               _loc2_++;
            }
         }
         if(this.§_-IE§ == §_-S§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-QH§.length)
            {
               if((this.§_-QH§[_loc2_] as §_-hf§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§_-QH§[_loc2_] as §_-hf§).§_-Uv§ == §_-8n§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§_-QH§[_loc2_] as §_-hf§).setComponentState(§_-8n§.§_-qC§);
                  }
                  else if((this.§_-QH§[_loc2_] as §_-hf§).§_-Uv§ == §_-8n§.§_-qC§)
                  {
                     if(this.§_-mV§().length < this.§_-jA§)
                     {
                        (this.§_-QH§[_loc2_] as §_-hf§).setComponentState(§_-8n§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§_-mV§().length >= this.§_-jA§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§_-QH§.length)
                  {
                     if((this.§_-QH§[_loc3_] as §_-hf§).§_-Uv§ == §_-8n§.§_-qC§)
                     {
                        (this.§_-QH§[_loc3_] as §_-hf§).setComponentState(§_-8n§.§_-uX§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§_-QH§.length)
                  {
                     if((this.§_-QH§[_loc3_] as §_-hf§).§_-Uv§ == §_-8n§.§_-uX§)
                     {
                        (this.§_-QH§[_loc3_] as §_-hf§).setComponentState(§_-8n§.§_-qC§);
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
         while(_loc2_ < this.§_-QH§.length)
         {
            (this.§_-QH§[_loc2_] as §_-hf§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §_-BT§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-QH§.length)
         {
            (this.§_-QH§[_loc1_] as §_-hf§).setComponentState(§_-8n§.§_-qC§);
            _loc1_++;
         }
      }
      
      public function §_-89§(param1:Number) : void
      {
         this.§_-jA§ = param1;
         if(param1 == 1)
         {
            this.§_-IE§ = §_-0-D§;
         }
         else
         {
            this.§_-IE§ = §_-S§;
         }
      }
      
      public function §_-7P§(param1:Array) : void
      {
         this.§_-BT§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§_-Sn§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §_-mV§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-QH§.length)
         {
            if((this.§_-QH§[_loc2_] as §_-hf§).§_-Uv§ == §_-8n§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§_-QH§[_loc2_] as §_-hf§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
