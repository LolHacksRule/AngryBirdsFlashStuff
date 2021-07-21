package §;" §
{
   import §%!0§.§,4§;
   import §&!P§.§^!!§;
   import §7t§.§7a§;
   import §;"7§.§="<§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §7!9§
   {
      
      private static const §%y§:Number = 1.5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §%y§ = 1.5;
         }
      }
      
      private var §@!z§:String;
      
      private var §?"#§:Vector.<String>;
      
      private var §,!_§:Boolean = false;
      
      private var §""+§:Rectangle;
      
      private var §]2§:Point;
      
      private var §7W§:Point;
      
      public function §7!9§(param1:§,4§, param2:XML)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:XML = null;
         var _loc4_:String = null;
         if(_loc7_ || _loc3_)
         {
            this.§?"#§ = new Vector.<String>();
            if(!(_loc8_ && _loc3_))
            {
               super();
            }
         }
         for each(_loc3_ in param2.reward)
         {
         }
         if(_loc7_ || this)
         {
            this.§?"#§.push(_loc3_.toString());
            loop1:
            while(true)
            {
               this.§7W§ = new Point(param2.x,param2.y);
               while(true)
               {
                  this.§@!z§ = "PIG_BASIC_SMALL";
                  continue loop1;
                  addr86:
                  if(!(_loc8_ && param2))
                  {
                     return;
                  }
               }
            }
         }
         §§goto(addr176);
      }
      
      public function update(param1:§^!!§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§,!_§ = this.§5H§(param1);
         }
      }
      
      private function §5H§(param1:§^!!§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§7a§ = null;
         var _loc4_:Rectangle = null;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= param1.getObjectCount())
            {
               return false;
            }
            _loc3_ = §7a§.§^!g§(param1.getObject(_loc2_));
            if(_loc6_)
            {
               if(_loc3_.§^_§())
               {
                  if(_loc6_)
                  {
                     addr51:
                     _loc4_ = _loc3_.§&8§(true);
                     if(_loc6_)
                     {
                        if(this.§""+§.intersects(_loc4_))
                        {
                           if(_loc6_ || _loc3_)
                           {
                              break;
                           }
                           addr82:
                           _loc2_++;
                           continue;
                        }
                        §§goto(addr82);
                     }
                     break;
                  }
                  continue;
               }
               §§goto(addr82);
            }
            §§goto(addr51);
         }
         return true;
      }
      
      public function §^!G§() : Vector.<DisplayObject>
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:BitmapData = null;
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         for each(_loc2_ in this.§?"#§)
         {
            _loc3_ = §="<§.§[E§.§`d§(_loc2_);
            if(_loc6_ || _loc2_)
            {
               _loc1_.push(new Bitmap(_loc3_,"auto",true));
            }
         }
         return _loc1_;
      }
      
      public function activate(param1:§,4§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§!9§)
            {
               if(_loc2_)
               {
                  param1.§=!U§(this.§@!z§,this.§7W§.x,this.§7W§.y);
               }
            }
         }
      }
      
      public function get §6!o§() : Number
      {
         return this.§]2§.x;
      }
      
      public function get §6!e§() : Number
      {
         return this.§]2§.y;
      }
      
      public function get objectPosition() : Point
      {
         return this.§7W§.clone();
      }
      
      public function get §&9§() : String
      {
         return this.§@!z§;
      }
      
      public function get §!9§() : Boolean
      {
         return this.§,!_§;
      }
   }
}
