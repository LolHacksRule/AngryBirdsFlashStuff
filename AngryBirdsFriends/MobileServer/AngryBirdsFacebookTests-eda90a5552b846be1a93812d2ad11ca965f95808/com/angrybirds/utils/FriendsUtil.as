package com.angrybirds.utils
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.engine.TunerFriends;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.shoppopup.ShopItem;
   import com.angrybirds.shoppopup.serveractions.ClientStorage;
   import com.rovio.assets.AssetCache;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class FriendsUtil
   {
      
      protected static var smABFont:Font = new AngryBirdsFont();
       
      
      public function FriendsUtil()
      {
         super();
      }
      
      public static function movieClipHasLabel(movieClip:MovieClip, labelName:String) : Boolean
      {
         var label:FrameLabel = null;
         for each(label in movieClip.currentLabels)
         {
            if(label.name == labelName)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function isItemNewEnoughForHighlight(days:Number) : Boolean
      {
         var now:Date = new Date();
         var daysSinceEpoch:Number = Math.round(now.valueOf() / 1000 / 60 / 60 / 24);
         var difference:Number = daysSinceEpoch - days;
         return difference < TunerFriends.ITEM_DAYS_TO_SHOW_NEW_TAG;
      }
      
      public static function markItemToBeSeen(seenItem:ShopItem) : void
      {
         if(!seenItem)
         {
            return;
         }
         if(!DataModelFriends(AngryBirdsBase.singleton.dataModel).clientStorage.hasItemBeenSeen(seenItem.id))
         {
            DataModelFriends(AngryBirdsBase.singleton.dataModel).clientStorage.storeData(ClientStorage.SEEN_ITEMS_STORAGE_NAME,[seenItem.id]);
         }
         var index:int = DataModelFriends(AngryBirdsBase.singleton.dataModel).newShopItems.indexOf(seenItem.id);
         if(index > -1)
         {
            DataModelFriends(AngryBirdsBase.singleton.dataModel).newShopItems.splice(index,1);
         }
         for(var i:int = 0; i < seenItem.getPricePointCount(); i++)
         {
            index = DataModelFriends(AngryBirdsBase.singleton.dataModel).newShopPricePoints.indexOf(seenItem.id + seenItem.getPricePoint(i).price);
            if(index > -1)
            {
               DataModelFriends(AngryBirdsBase.singleton.dataModel).clientStorage.storeData(ClientStorage.SEEN_ITEMS_STORAGE_NAME,[seenItem.id + seenItem.getPricePoint(i).price]);
               DataModelFriends(AngryBirdsBase.singleton.dataModel).newShopPricePoints.splice(index,1);
            }
         }
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).updateFriendsbarShopButton();
      }
      
      public static function setTextInCorrectFont(tf:TextField, text:String, limitTheWidth:Number = 0) : void
      {
         var averageCharacterWidth:Number = NaN;
         var averageCharactersToFit:int = 0;
         var currentAmountOfCharacters:int = 0;
         var currentText:* = null;
         var currentWidth:Number = NaN;
         var previousText:String = null;
         tf.text = text;
         if(!smABFont.hasGlyphs(text))
         {
            tf.embedFonts = false;
            tf.setTextFormat(new TextFormat("_sans"));
         }
         else
         {
            tf.embedFonts = true;
            tf.setTextFormat(tf.defaultTextFormat);
         }
         if(limitTheWidth > 0)
         {
            if(tf.textWidth > limitTheWidth)
            {
               averageCharacterWidth = tf.textWidth / text.length;
               averageCharactersToFit = limitTheWidth / averageCharacterWidth;
               currentAmountOfCharacters = averageCharactersToFit;
               currentText = text.substring(0,currentAmountOfCharacters) + "...";
               tf.text = currentText;
               currentWidth = tf.textWidth;
               if(currentWidth > limitTheWidth)
               {
                  while(currentWidth > limitTheWidth && currentAmountOfCharacters > 0)
                  {
                     currentAmountOfCharacters--;
                     currentText = text.substring(0,currentAmountOfCharacters) + "...";
                     tf.text = currentText;
                     currentWidth = tf.textWidth;
                  }
               }
               else if(tf.textWidth < limitTheWidth)
               {
                  previousText = currentText;
                  while(currentWidth < limitTheWidth && currentAmountOfCharacters < text.length)
                  {
                     currentAmountOfCharacters++;
                     currentText = text.substring(0,currentAmountOfCharacters) + "...";
                     tf.text = currentText;
                     currentWidth = tf.textWidth;
                     if(currentWidth > limitTheWidth)
                     {
                        tf.text = previousText;
                        break;
                     }
                     previousText = currentText;
                  }
               }
            }
         }
      }
      
      public static function Clamp(value:Number, min:Number, max:Number) : Number
      {
         return Math.max(min,Math.min(max,value));
      }
      
      public static function getCountDownTime(secondsLeft:int) : String
      {
         var days:Number = NaN;
         var hours:* = undefined;
         var minutes:* = undefined;
         var seconds:* = undefined;
         var timeString:* = "";
         if(secondsLeft > 0)
         {
            days = 0;
            hours = Math.floor(secondsLeft / 3600);
            if(hours >= 36)
            {
               days = Math.floor(secondsLeft / 86400);
               secondsLeft -= days * 86400;
               hours = Math.floor(secondsLeft / 3600);
            }
            secondsLeft -= hours * 3600;
            minutes = Math.floor(secondsLeft / 60);
            secondsLeft -= minutes * 60;
            seconds = Math.floor(secondsLeft);
            if(minutes < 10)
            {
               minutes = "0" + minutes;
            }
            if(seconds < 10)
            {
               seconds = "0" + seconds;
            }
            if(days > 0)
            {
               timeString = days + "d " + hours + "h";
            }
            else if(hours > 0)
            {
               if(hours < 10)
               {
                  hours = "0" + hours;
               }
               timeString = hours + ":" + minutes + ":" + seconds;
            }
            else
            {
               timeString = "00:" + minutes + ":" + seconds;
            }
         }
         else
         {
            timeString = "00:00";
         }
         return timeString;
      }
      
      public static function getTimeLeftAsPrettyString(secondsLeft:Number) : Array
      {
         var hours:int = 0;
         var secondsLeftFromFullMinutes:int = 0;
         var minutesLeftFromFullHours:int = 0;
         secondsLeft = Math.floor(secondsLeft);
         var minutesLeft:int = secondsLeft / 60;
         var days:int = Math.floor(minutesLeft / 1440);
         var output:* = "";
         var outputColor:uint = 16777215;
         if(days > 0)
         {
            if(days == 1)
            {
               output = days + " day ";
            }
            else
            {
               output = days + " days ";
            }
            hours = Math.floor((minutesLeft - days * 1440) / 60);
            output += hours + "h";
         }
         else
         {
            hours = Math.floor(minutesLeft / 60);
            if(hours == 0)
            {
               if(secondsLeft >= 60)
               {
                  output = minutesLeft + "min ";
                  secondsLeftFromFullMinutes = Math.floor(secondsLeft - minutesLeft * 60);
                  output += secondsLeftFromFullMinutes + "s";
               }
               else
               {
                  output = secondsLeft + "s";
               }
            }
            else
            {
               output = hours + "h ";
               minutesLeftFromFullHours = Math.floor(minutesLeft - hours * 60);
               output += minutesLeftFromFullHours + "min";
            }
         }
         return [output,outputColor];
      }
      
      public static function doBrandedImageReplacement(brandedImageName:String, replacableImagePrefix:String, parentMovieClip:MovieClip) : void
      {
         var counter:int = 0;
         var imagePlacement:MovieClip = null;
         var cls:Class = AssetCache.getAssetFromCache(brandedImageName,false,false);
         if(cls)
         {
            counter = 1;
            imagePlacement = parentMovieClip.getChildByName(replacableImagePrefix + "_" + counter) as MovieClip;
            while(imagePlacement)
            {
               imagePlacement.removeChildren();
               imagePlacement.addChild(new cls());
               counter++;
               imagePlacement = parentMovieClip.getChildByName(replacableImagePrefix + "_" + counter) as MovieClip;
            }
         }
      }
   }
}
