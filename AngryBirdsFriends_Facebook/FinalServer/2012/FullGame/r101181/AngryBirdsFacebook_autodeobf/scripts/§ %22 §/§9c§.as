package § " §
{
   import §!"=§.§&!J§;
   import §!"=§.§8S§;
   import §!K§.Item;
   import §!K§.§]q§;
   import §#!H§.§=!F§;
   import §0p§.§3!D§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   
   public class §9c§ implements §@Y§
   {
       
      
      private var §4U§:Array;
      
      private var § J§:Boolean = false;
      
      public function §9c§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§4U§ = [];
            do
            {
               super();
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      public function §5!?§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var object:Object = null;
         if(_loc6_)
         {
            this.§ J§ = true;
         }
         var _loc3_:* = this.§4U§;
         for each(object in _loc3_)
         {
            if(_loc6_ || _loc3_)
            {
               try
               {
                  this.render(object.avatarString,object.callBack,object.imageSize,object.ignoreBackground);
               }
               catch(e:Error)
               {
                  continue;
               }
            }
         }
      }
      
      public function §0"C§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§ J§ = true;
         }
      }
      
      public function §-@§(param1:§8S§) : void
      {
      }
      
      public function render(param1:String, param2:Function, param3:int = 50, param4:Boolean = false, param5:Object = null, param6:§8S§ = null, param7:int = 0) : BitmapData
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc8_:* = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Array = null;
         var _loc11_:§&!J§ = null;
         var _loc12_:BitmapData = null;
         var _loc13_:Item = null;
         var _loc14_:§]q§ = null;
         var _loc15_:Item = null;
         var _loc16_:Matrix = null;
         if(!_loc20_)
         {
            if(this.§ J§)
            {
               §§push(param3);
               loop0:
               while(true)
               {
                  §§push(§§pop() * 0.4);
                  addr104:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     addr105:
                     while(true)
                     {
                        _loc8_ = §§pop();
                        addr106:
                        addr126:
                        while(!_loc20_)
                        {
                           continue loop0;
                        }
                        addr98:
                        return null;
                     }
                  }
               }
            }
            §§goto(addr112);
         }
         §§goto(addr108);
      }
   }
}
