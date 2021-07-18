package §>z§
{
   public class §+E§
   {
      
      public static const §-V§:String = "GROUND_HILLS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §-V§ = "GROUND_HILLS";
         }
      }
      
      protected var §?0§:String;
      
      protected var §]!m§:String;
      
      protected var §2"%§:int;
      
      protected var §0n§:int;
      
      protected var §3S§:Vector.<§5!?§>;
      
      protected var §=!Y§:String;
      
      protected var §!>§:String;
      
      public function §+E§(param1:String, param2:int, param3:int, param4:String, param5:String, param6:String)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super();
            loop0:
            while(true)
            {
               this.§?0§ = param1;
               loop1:
               while(true)
               {
                  this.§3S§ = new Vector.<§5!?§>();
                  while(true)
                  {
                     this.§2"%§ = param2;
                     loop3:
                     while(_loc7_)
                     {
                        this.§0n§ = param3;
                        while(true)
                        {
                           this.§=!Y§ = param4;
                           loop5:
                           while(_loc7_ || param2)
                           {
                              if(!_loc8_)
                              {
                                 if(_loc7_)
                                 {
                                    this.§]!m§ = param5;
                                    while(true)
                                    {
                                       this.§!>§ = param6;
                                       if(_loc7_ || param2)
                                       {
                                          if(_loc7_)
                                          {
                                             if(!_loc8_)
                                             {
                                                break;
                                             }
                                             continue loop0;
                                          }
                                          continue loop5;
                                       }
                                    }
                                    return;
                                    continue;
                                 }
                                 continue loop1;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      public function get id() : String
      {
         return this.§?0§;
      }
      
      public function get §!!i§() : String
      {
         return this.§=!Y§;
      }
      
      public function get §'o§() : int
      {
         return this.§2"%§;
      }
      
      public function get §'k§() : int
      {
         return this.§0n§;
      }
      
      public function get §1D§() : String
      {
         return this.§]!m§;
      }
      
      public function get §<N§() : String
      {
         return this.§!>§;
      }
      
      public function get §[!A§() : int
      {
         return this.§3S§.length;
      }
      
      public function §`!r§(param1:XMLList) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:§5!?§ = null;
         for each(_loc2_ in param1.Layer)
         {
            _loc3_ = this.addLayer(_loc2_.@id,_loc2_.@sky,_loc2_.@scale,_loc2_.@speed / 1000,_loc2_.@xOffset,_loc2_.@yOffset,_loc2_.@foreground != 0,_loc2_.@tileable.toString().toLowerCase() != "false",_loc2_.@optional.toString().toLowerCase() == "true",_loc2_.@highQuality.toString().toLowerCase() == "true");
            if(!(_loc6_ && param1))
            {
               _loc3_.§["%§(_loc2_.§#U§);
            }
         }
         if(!(_loc6_ && this))
         {
            this.§3S§.reverse();
         }
      }
      
      public function addLayer(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false) : §5!?§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc11_:§5!?§ = new §5!?§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         if(_loc13_)
         {
            this.§3S§.push(_loc11_);
         }
         return _loc11_;
      }
      
      public function §>!E§(param1:int) : §5!?§
      {
         return this.§3S§[param1];
      }
   }
}
